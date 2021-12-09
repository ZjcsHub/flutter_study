// 轮播图
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("轮播图"),
        ),
        body: Contents2(),
      ),
    );
  }
}

class Contents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Image.network(
          "http://via.placeholder.com/350x150",
          fit: BoxFit.cover,
        );
      },
      pagination: SwiperPagination(),
      control: SwiperControl(),
    );
  }
}

class Contents2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Swiper(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Image.network(
                "http://via.placeholder.com/350x150",
                fit: BoxFit.cover,
              );
            },
            pagination: SwiperPagination(),
            control: SwiperControl(),
          ),
        )),
      ],
    );
  }
}
