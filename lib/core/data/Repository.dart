import 'package:flutter_game/core/data/remote/RemoteDataSource.dart';
import 'package:flutter_game/core/domain/model/GameDetailModel.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';

abstract class RepositoryProtocol {

  Future<GameResponse> getHighlightGameByPage(int page);
  Future<GameDetailModel> getGameById(int gameId);
}

class Repository extends RepositoryProtocol {

  final RemoteDataSource remoteDataSource;

  Repository({required this.remoteDataSource});

  @override
  Future<GameResponse> getHighlightGameByPage(int page) {

    return remoteDataSource.getHighlightGameByPage(page);
  }

  @override
  Future<GameDetailModel> getGameById(int gameId) {

    return remoteDataSource.getGameById(gameId);
  }

}