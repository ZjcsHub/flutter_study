//
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("加载");
    return HomeContents4();


  }
}

class HomeContext extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 去掉debug图标
        home: Scaffold(
          appBar: AppBar(
            title: Text("导航自定义组件"),
            centerTitle: true,
            backgroundColor: Colors.red,
            leading: IconButton(onPressed: (){
              print("menu");
            }, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: (){
                print("search");
              }, icon: Icon(Icons.search)),
              IconButton(onPressed: (){
                print("setting");
              }, icon: Icon(Icons.settings)),
            ],
          ),
        )
    );

  }

}
class HomeContents2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("顶部导航栏"),
              bottom: TabBar(
                tabs: [
                  Tab(text: "日",),
                  Tab(text: "月",),
                  Tab(text: "年",)
                ],
              ),

            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    ListTile(
                      title: Text("第一个tab"),
                    ),
                    ListTile(
                      title: Text("第一个tab"),
                    ),
                    ListTile(
                      title: Text("第一个tab"),
                    )

                  ],
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text("第二个tab"),
                    ),
                    ListTile(
                      title: Text("第二个tab"),
                    ),
                    ListTile(
                      title: Text("第二个tab"),
                    )

                  ],
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text("第三个tab"),
                    ),
                    ListTile(
                      title: Text("第三个tab"),
                    ),
                    ListTile(
                      title: Text("第三个tab"),
                    )

                  ],
                )
              ],
            ),

          )
      ),
    );

  }
}

class HomeContents3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Row(
                children: [
                  Expanded(
                      child: TabBar(
                      tabs: [
                      Tab(text: "日",),
                      Tab(text: "月",),
                      Tab(text: "年",)
                    ],
                     labelColor: Colors.red,
                        indicatorColor: Colors.red,
                        unselectedLabelColor: Colors.white,
                      onTap: (index) {
                        print("选中 $index");
                      },
                      )
                  )
                ],
              )


            ),
            body: TabBarView(
              children: [
                ListView(
                  children: [
                    ListTile(
                      title: Text("第一个tab"),
                    ),
                    ListTile(
                      title: Text("第一个tab"),
                    ),
                    ListTile(
                      title: Text("第一个tab"),
                    )

                  ],
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text("第二个tab"),
                    ),
                    ListTile(
                      title: Text("第二个tab"),
                    ),
                    ListTile(
                      title: Text("第二个tab"),
                    )

                  ],
                ),
                ListView(
                  children: [
                    ListTile(
                      title: Text("第三个tab"),
                    ),
                    ListTile(
                      title: Text("第三个tab"),
                    ),
                    ListTile(
                      title: Text("第三个tab"),
                    )

                  ],
                )
              ],
            ),

          )
      ),
    );

  }
}

class HomeContents4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeContents4State();
  }



}
class HomeContents4State extends State<HomeContents4> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController!.addListener(() {
      print(_tabController!.index);
    });
  }

  @override
  void dispose() {
    // 销毁函数
    super.dispose();
    _tabController?.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TabbarControllerPage"),
          bottom: TabBar(
            controller: this._tabController,
            tabs: [
              Tab(text: "公交",),
              Tab(text: "地铁",)
            ],
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
          children: [
            Text("公交"),
            Text("地铁")
          ],
        ),
      ),
    );
  }

}
