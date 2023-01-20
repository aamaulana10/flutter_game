import 'package:flutter_game/core/data/Repository.dart';
import 'package:flutter_game/core/data/remote/RemoteDataSource.dart';
import 'package:flutter_game/core/domain/usecase/Usecase.dart';

class Injection {

  var remoteDataSource = RemoteDataSource();

  Repository initRepository() {
    return Repository(remoteDataSource: remoteDataSource);
  }

  Usecase provideUsecase() {
    var repository = initRepository();
    return Interactor(repositoryProtocol: repository);
  }
}