import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:vincent_toolbox/menu.dart';
import 'package:vincent_toolbox/store/page_store.dart';
import 'package:vincent_toolbox/widgets/http_tool.dart';
import 'package:vincent_toolbox/widgets/welcome.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final _pageStore = Provider.of<PageStore>(context);

    var pageMap = {
      0: const Welcome(),
      1: const HttpTool()
    };

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
                MaterialPageRoute(builder: (context) => Menu()),
              );
            },
          ),
        ],
      ),
      body: pageMap[_pageStore.page],
    );
  }
}
