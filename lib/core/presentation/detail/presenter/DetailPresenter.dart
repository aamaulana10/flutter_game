import 'package:flutter_game/core/domain/model/GameDetailModel.dart';
import 'package:flutter_game/core/injection/Injection.dart';
import 'package:get/get.dart';

class DetailPresenter extends GetxController {

  var useCase = Injection().provideUsecase();
  var gameDetailModel = GameDetailModel();
  var isLoading = false;

  getDetailGame(gameId) async{

    isLoading = true;

    update();

    try {

      gameDetailModel = await useCase.getGameById(gameId);

    }catch (e) {

      print(e);
    }

    isLoading = false;

    update();
  }
}