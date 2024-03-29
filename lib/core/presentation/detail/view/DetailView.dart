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
        backgroundColor: Colors.black26,
      body: GetBuilder<DetailPresenter>(builder: (controller) {

        var data = controller.gameDetailModel;
        return  Container(
          child: controller.isLoading ?
          Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
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
                SizedBox(height: 16,),
                Text(data.name ?? "", style: TextStyle(
                 color: Colors.white,
                 fontSize: 18,
                 fontWeight: FontWeight.w600
                )),
                SizedBox(height: 16,),
                Container(
                  height: 40,
                  child: ListView.builder(
                    itemCount: data.genres?.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, idx){
                      return Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        alignment: Alignment.center,
                        child: Text(data.genres?[idx].name ?? "", style: TextStyle(
                         color: Colors.white
                        )),
                      );
                    },
                  ),
                ),
                SizedBox(height: 16),
                Text("Release at ${data.released ?? ""}", style: TextStyle(
                    color: Colors.white,
                )),
                SizedBox(height: 16,),
                Text(data.descriptionRaw ?? "", style: TextStyle(
                    color: Colors.white,
                )),
                SizedBox(height: 16,),
                Text("Rating ${data.rating == 0 ? "unknown" : data.rating}", style: TextStyle(
                    color: Colors.white
                ))
              ],
            ),
          )
        );
      })
    );
  }
}
