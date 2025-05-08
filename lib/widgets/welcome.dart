import "dart:ui" as ui;
import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imageList = [
      "assets/img/girls.jpg",
      "assets/img/naruto.jpg",
      "assets/img/pokemon1.jpg",
      "assets/img/tifa.jpg",
      "assets/img/velvet.jpg",
    ];

    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "诡锋的工具箱",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                foreground:
                    Paint()
                      ..shader = ui.Gradient.linear(
                        const Offset(100, 20),
                        const Offset(250, 20),
                        <Color>[Colors.purple, Colors.cyan],
                      ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: SizedBox(
              height: 250,
              child: Swiper(
                autoplay: true,
                autoplayDelay: 5000,
                duration: 1000,
                loop: true,
                itemCount: 5,
                pagination: const SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: TDSwiperPagination.fraction,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return TDImage(assetUrl: imageList[index]);
                },
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 12),
              child: const Text(
                  "点击左上角可以选择工具",
                style: TextStyle(
                  fontSize: 25
                ),
              )
          )
        ],
      ),
    );
  }
}
