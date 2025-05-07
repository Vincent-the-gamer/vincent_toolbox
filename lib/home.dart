import 'package:flutter/material.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:vincent_toolbox/counter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TDNavBar(
        height: 48,
        title: "诡锋工具箱",
        titleColor: Colors.white,
        backgroundColor: Colors.pink,
        titleFontWeight: FontWeight.w600,
        useDefaultBack: false,
        leftBarItems: [
          TDNavBarItem(
            icon: TDIcons.list,
            iconSize: 24,
            iconColor: Colors.white,
            action: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TDNavBar(
                  title: "工具",
                )),
              );
            },
          ),
        ],
      ),
      body: Counter(),
    );
  }
}
