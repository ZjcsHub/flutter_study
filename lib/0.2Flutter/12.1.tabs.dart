
import 'package:flutter/material.dart';
import '12.2.tab_home.dart';
import '12.3.tab_setting.dart';
import '12.4.tab_sport.dart';
class BottomTabState extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return BottomTab();
  }

}

class BottomTab extends State<BottomTabState> {

  int _currentIndex = 0;

  var _pageLists = [
    {"boby":HomePage(),"title":"首页"},
    {"boby":SportPage(),"title":"运动"},
    {"boby":SettinsPage(),"title":"设置"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageLists[_currentIndex]["title"] as String),
      ),
      body: _pageLists[_currentIndex]["boby"] as Widget,

      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.red,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed, // 设置底部有多个按钮
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "首页",
              activeIcon: Icon(
                Icons.home,

              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,

              ),
              label: "运动",
              activeIcon: Icon(
                Icons.home,

              )),

          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "设置",
              activeIcon: Icon(
                Icons.settings,

              )),
        ],
      ),
    );
  }
}
