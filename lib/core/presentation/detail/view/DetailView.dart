import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/core/presentation/detail/presenter/DetailPresenter.dart';
import 'package:get/get.dart';

class DetailView extends StatefulWidget {
  int gameId;
  DetailView({required this.gameId});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {

  DetailPresenter presenter = Get.put(DetailPresenter());

  @override
  void initState() {
    super.initState();

    presenter.getDetailGame(widget.gameId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DetailPresenter>(builder: (controller) {

        var data = controller.gameDetailModel;

        return Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                data.backgroundImage != null ? CachedNetworkImage(
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.contain,
                  imageUrl: data.backgroundImage!,
                  memCacheHeight: 240,
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Container(
                  ),
                )
                    :
                Container(),
                Text(data.name ?? ""),
                Text(data.released ?? ""),
                Text(data.description ?? ""),
                Text("Rating ${data.rating}")
              ],
            ),
          )
        );
      })
    );
  }
}
