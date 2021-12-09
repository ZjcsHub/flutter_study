import 'package:flutter/material.dart';

final routes = {
  // '/search':(context,{arguments}) => SearchClass(arguments: arguments,) ,
  // '/form':(context,{arguments}) => SearchClass(arguments: arguments)
};

Route<dynamic>? routeFactory(RouteSettings settings) {
// 统一处理
  final String? name = settings.name;
  print(name);
  final Function pageContentBuilder = routes[name] as Function;
  print(pageContentBuilder);
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      print(settings.arguments);
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
}
