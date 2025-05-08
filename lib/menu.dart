import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';
import 'package:vincent_toolbox/store/page_store.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  var buttonList = [
    {"index": 0, "label": "返回首页", "value": 0 },
    {"index": 1, "label": "HTTP工具", "value": 1 },
    {"index": 2, "label": "未完待续", "value": 2 },
  ];

  @override
  Widget build(BuildContext context) {
    final _pageStore = Provider.of<PageStore>(context);

    return Scaffold(
      appBar: TDNavBar(
        height: 48,
        title: "工具列表",
        titleColor: Colors.white,
        backgroundColor: Colors.pink,
        titleFontWeight: FontWeight.w600,
        useDefaultBack: false,
        leftBarItems: [
          TDNavBarItem(
            icon: Icons.arrow_left,
            iconColor: Colors.white,
            iconSize: 30,
            action: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
        ),
        children:
            buttonList
                .map(
                  (data) => TDButton(
                    text: data["label"] as String ?? "",
                    style: TDButtonStyle(
                      textColor: Colors.white,
                      backgroundColor: data["index"] == 0 ? Colors.red : Colors.blue,
                    ),
                    activeStyle: TDButtonStyle(
                      textColor: Colors.white,
                      backgroundColor: Colors.purple,
                    ),
                    onTap: () {
                      _pageStore.toPage(data["value"] as int);
                      Navigator.pop(context);
                    }
                  ),
                )
                .toList(),
      ),
    );
  }
}
