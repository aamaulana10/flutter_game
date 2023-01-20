import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_game/core/presentation/home/HomePresenter.dart';

class HomeHighlightWidget extends StatelessWidget {
  HomePresenter presenter;
  ScrollController scrollController;
  HomeHighlightWidget({required this.presenter, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 40,
              child: Row(
                children: [
                  Expanded(
                    child: Text("Recommended Game",style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  TextButton(
                      onPressed: () {
                        print("see all");
                      },
                      child: Text("See all")
                  )
                ],
              )
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisExtent: 240,
              ),
              itemCount: presenter.highlightGame.length,
              controller: scrollController,
              itemBuilder: (ctx, idx){

                var data = presenter.highlightGame[idx];
                return Container(
                  decoration: BoxDecoration(

                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child:  CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: data.backgroundImage ?? "",
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
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          child: Column(
                            children: [
                              Text(data.name ?? "", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              )),
                              Text("release at ${data.released ?? ""}", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              )),
                              Text("score ${data.metacritic.toString() ?? ""}", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              )),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          color: Colors.black.withOpacity(0.7),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
