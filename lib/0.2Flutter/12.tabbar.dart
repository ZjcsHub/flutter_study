import 'package:flutter/material.dart';
import '12.1.tabs.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomTabState()
    );
  }
}
