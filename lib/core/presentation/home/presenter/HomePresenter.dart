import 'package:flutter/material.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';
import 'package:flutter_game/core/injection/Injection.dart';
import 'package:flutter_game/core/presentation/home/router/HomeRouter.dart';
import 'package:flutter_game/core/utils/AlertHelper.dart';
import 'package:get/get.dart';

class HomePresenter extends GetxController {

  var useCase = Injection().provideUsecase();
  var router = HomeRouter();
  List<GameResults> highlightGame = [];
  ScrollController scrollController = new ScrollController(initialScrollOffset: 5.0);
  int currentPage = 1;
  bool isLoading = false;

  initPresenter() {
    getHighlightGame();

    scrollController.addListener(_scrollListener);
  }

  getHighlightGame() async{

    isLoading = true;
    update();

    try {

      var data = await useCase.getHighlightGameByPage(currentPage);

      if(highlightGame.isEmpty) {
        highlightGame = data.results ?? [];
      }else {
        if(data.results?.isNotEmpty == true ) {

          data.results!.forEach((element) {

            highlightGame.add(element);
          });
        }
      }
    } catch (e) {
      print(e.toString());

      AlertHelper.showErrorSnackBar("Ups, error", "We'll fix it soon");
    }

    isLoading = false;

    update();
  }

  _scrollListener() {

    if (highlightGame.isNotEmpty) {
      if (scrollController.offset >=
          scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {

        print("comes to bottom ");
        currentPage = currentPage + 1;

        update();

        getHighlightGame();
        // }
      }
    }
  }

  gotoDetail(int gameId) {

    router.gotoDetail(gameId);
  }
}