import 'package:flutter_game/core/data/Repository.dart';
import 'package:flutter_game/core/domain/model/GameDetailModel.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';

abstract class Usecase {

  Future<GameResponse> getHighlightGameByPage(int page);
  Future<GameDetailModel> getGameById(int gameId);
}

class Interactor extends Usecase{

  final RepositoryProtocol repositoryProtocol;

  Interactor({required this.repositoryProtocol});

  @override
  Future<GameResponse> getHighlightGameByPage(int page) {

    return repositoryProtocol.getHighlightGameByPage(page);
  }

  @override
  Future<GameDetailModel> getGameById(int gameId) {

    return repositoryProtocol.getGameById(gameId);
  }
}