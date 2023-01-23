import 'package:flutter_game/core/presentation/detail/view/DetailView.dart';
import 'package:get/get.dart';

class HomeRouter {

  gotoDetail(int gameId) {

    Get.to(() => DetailView(gameId: gameId));
  }
}