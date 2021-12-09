// 命名路由传值
import 'package:flutter/material.dart';
import '12.1.tabs.dart';
import '13.1luyou_page2.dart';
main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  final routes = {
      "/":(context,{arguments}) =>  BottomTabState(),
      '/search':(context,{arguments}) => SearchClass(arguments: arguments,) ,
      '/form':(context,{arguments}) => SearchClass(arguments: arguments)
  };


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: "/",
        // 路由配置
      //   routes: {
      //     '/search':(context) => SearchClass(title: "Search"),
      //   '/form':(context) => SearchClass(title: "Form",)
      // },

      // routes: this.routes,
      onGenerateRoute: (RouteSettings settings){
          // 统一处理
        final String? name = settings.name;
        print(name);
        final Function pageContentBuilder = this.routes[name] as Function;
        print(pageContentBuilder);
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            print(settings.arguments);
            final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context,arguments:settings.arguments));
            return route;
          }else{
            final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
            return route;
          }

        }

      },

    );
  }
}

