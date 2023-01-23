import 'package:flutter_game/core/domain/model/GameDetailModel.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';
import 'package:flutter_game/core/utils/api/ApiCall.dart';

class RemoteDataSource{

  Future<GameResponse> getHighlightGameByPage(int page) async{

    print(ApiCall.getHighlightGameByPage(page));

    try {
      var response = await ApiCall.getRequest(ApiCall.getHighlightGameByPage(page));

      var data = GameResponse.fromJson(response.data);

      return data;
    }catch(e) {

      throw e;
    }
  }

  Future<GameDetailModel> getGameById(int gameId) async{

    try {
      var response = await ApiCall.getRequest(ApiCall.getDetailGameById(gameId));

      var data = GameDetailModel.fromJson(response.data);

      return data;
    }catch(e) {
      throw e;
    }
  }
}