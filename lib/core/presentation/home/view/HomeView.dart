import 'package:flutter/material.dart';
import 'package:flutter_game/core/presentation/home/presenter/HomePresenter.dart';
import 'package:flutter_game/core/presentation/home/widget/HomeHighlightWidget.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  var presenter = Get.put(HomePresenter());

  @override
  void initState() {
    super.initState();

    presenter.initPresenter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("99.co Games"),
        centerTitle: true,
        backgroundColor: Colors.black26,
        actions: [
          IconButton(
              onPressed: () {
                print("search");
              },
              icon: Icon(Icons.search)
          ),
          SizedBox(width: 16)
        ],
      ),
      backgroundColor: Colors.black26,
      body: GetBuilder<HomePresenter>(builder: (controller) {
        return Container(
            child: Column(
              children: [
                Expanded(child: HomeHighlightWidget(presenter: controller, scrollController: controller.scrollController)),
                controller.isLoading == true ? CircularProgressIndicator() : Container()
              ],
            )
        );
      })
    );
  }
}
