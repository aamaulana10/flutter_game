import 'package:flutter_game/core/data/remote/RemoteDataSource.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';

abstract class RepositoryProtocol {

  Future<GameResponse> getNewestGameByPage();
  Future<GameResponse> getHighlightGameByPage(int page);
}

class Repository extends RepositoryProtocol {

  final RemoteDataSource remoteDataSource;

  Repository({required this.remoteDataSource});

  @override
  Future<GameResponse> getNewestGameByPage() {

    return remoteDataSource.getNewestGameByPage();
  }

  @override
  Future<GameResponse> getHighlightGameByPage(int page) {

    return remoteDataSource.getHighlightGameByPage(page);
  }

}