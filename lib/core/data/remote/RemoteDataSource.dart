import 'package:flutter_game/core/domain/model/GameModel.dart';
import 'package:flutter_game/core/utils/api/ApiCall.dart';

class RemoteDataSource{

  Future<GameResponse> getNewestGameByPage() async{

    try {
      var response = await ApiCall.getRequest(ApiCall.getNewestGameByPage(1));

      var data = GameResponse.fromJson(response.data);

      return data;
    }catch(e) {
      throw e;
    }
  }

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
}