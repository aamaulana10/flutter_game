import 'package:flutter_game/core/data/Repository.dart';
import 'package:flutter_game/core/domain/model/GameModel.dart';

abstract class Usecase {

  Future<GameResponse> getNewestGameByPage();
  Future<GameResponse> getHighlightGameByPage(int page);
}

class Interactor extends Usecase{

  final RepositoryProtocol repositoryProtocol;

  Interactor({required this.repositoryProtocol});

  @override
  Future<GameResponse> getNewestGameByPage() {

    return repositoryProtocol.getNewestGameByPage();
  }

  @override
  Future<GameResponse> getHighlightGameByPage(int page) {

    return repositoryProtocol.getHighlightGameByPage(page);
  }
}