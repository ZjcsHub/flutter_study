// 侧边栏

import 'package:flutter/material.dart';
import '16.1.userSpace.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("侧边栏"),
        ),
        drawer: HeaderDrawer2(),
        endDrawer: Drawer(
          child: Text("右侧侧边栏"),
        ),
      ),
    );

  }
}
// 头部侧边栏创建
class HeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child:DrawerHeader(
                    child: Text("左侧侧边栏"),
                    decoration: BoxDecoration(
                      // color: Colors.yellow
                        image: DecorationImage(
                            image: NetworkImage("https://pica.zhimg.com/80/e5263dd2a6f767d983ec9d316da13990_1440w.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text("我的空间"),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),

            ),
            Divider(),

          ],
        )
    );
  }
}

class HeaderDrawer2  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child:UserAccountsDrawerHeader(
                    accountName: Text("老师"),
                    accountEmail: Text("anlfds@12.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://pica.zhimg.com/80/e5263dd2a6f767d983ec9d316da13990_1440w.jpg"),
                    ),
                    decoration: BoxDecoration(
                      // color: Colors.yellow
                        image: DecorationImage(
                            image: NetworkImage("https://pica.zhimg.com/80/e5263dd2a6f767d983ec9d316da13990_1440w.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                    otherAccountsPictures: [
                      Image.network("https://pica.zhimg.com/80/e5263dd2a6f767d983ec9d316da13990_1440w.jpg")
                    ],
                  )
                )
              ],
            ),
            ListTile(
              title: Text("我的空间"),
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              onTap: (){
                // 侧边栏隐藏
                Navigator.of(context).pop();
                
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserPage())
                );
                
              },

            ),
            Divider(),

          ],
        )
    );

  }
}