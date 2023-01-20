import 'package:flutter/material.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';
import 'package:flutter_game/core/injection/Injection.dart';
import 'package:get/get.dart';

class HomePresenter extends GetxController {

  var useCase = Injection().provideUsecase();
  List<GameResults> newestGame = [];
  List<GameResults> highlightGame = [];
  ScrollController scrollController = new ScrollController(initialScrollOffset: 5.0);
  int currentPage = 1;
  bool isLoading = false;

  initPresenter() {
    getHighlightGame();
    getNewestGame();

    scrollController.addListener(_scrollListener);
  }

  getNewestGame() async{

    try {

      var data = await useCase.getNewestGameByPage();
      newestGame = data.results ?? [];
    } catch (e) {
      print(e.toString());
    }

    update();
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
}