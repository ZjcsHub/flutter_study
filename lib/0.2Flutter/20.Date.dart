// Date 日期


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        //此处
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        //此处
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: Text("日期组件"),
        ),
        body: Contents2(),

      ),
    );

  }

}
// 系统日期选择器
class Contents extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ContentsState();
  }

}
class _ContentsState extends State {
// 当前日期
  var now = DateTime.now();

  @override
  void initState() {
    super.initState();

    // print(now);
    // print(now.millisecondsSinceEpoch);
    // print(DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch));

    // printDate();

  }

  printDate() {
    print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
    print(formatDate(DateTime(1989, 2, 21), [yy, '-', m, '-', dd]));
    print(formatDate(DateTime(1989, 2, 1), [yy, '-', m, '-', d]));

    print(formatDate(DateTime(1989, 2, 1), [yy, '-', MM, '-', d]));
    print(formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d]));

    print(formatDate(DateTime(1989, 2, 1), [yy, '-', M, '-', d]));

    print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', DD]));
    print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', D]));

    print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss]));

    print(formatDate(
        DateTime(1989, 02, 1, 15, 40, 10), [hh, ':', nn, ':', ss, ' ', am]));

    print(formatDate(
        DateTime(1989, 02, 1, 15, 40, 10), [hh, ':', nn, ':', ss, ' ', am]));

    print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [hh]));
    print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [h]));

    print(formatDate(DateTime(1989, 02, 1, 5), [am]));
    print(formatDate(DateTime(1989, 02, 1, 15), [am]));

    print(
        formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, z]));

    print(formatDate(
        DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, ' ', Z]));

    print(formatDate(DateTime(1989, 02, 21), [yy, ' ', w]));
    print(formatDate(DateTime(1989, 02, 21), [yy, ' ', W]));

    print(formatDate(DateTime(1989, 12, 31), [yy, '-W', W]));
    print(formatDate(DateTime(1989, 1, 1), [yy, '-', mm, '-w', W]));

    print(formatDate(
        DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, ' ', Z]));

    print(formatDate(DateTime(2020, 04, 18, 21, 14), [H, '\\h', n]));
  }



  _showDatePicker() async {
    // showDatePicker(
    //     context: context,
    //     initialDate: now,
    //     firstDate: DateTime(1990, 1, 1),
    //     lastDate: DateTime(2021,12,31),
    // ).then((resultDate){
    //   print("点击了 $resultDate");
    // });
    var result = await showDatePicker(
            context: context,
            initialDate: now,
            firstDate: DateTime(1990, 1, 1),
            lastDate: DateTime(2021,12,31),
            locale: Locale("zh")
        );
    print(result);
    setState(() {
      this.now = result as DateTime;
    });
    return result;
  }

  _showTimePicker() async {
     var result =  await showTimePicker(
         context: context,
         initialTime: TimeOfDay(hour: now.hour, minute: now.minute),

     );
     setState(() {
       this.now = DateTime(now.year,now.month,now.day,result!.hour,result.minute);
     });



    print(result);
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(formatDate(now, [yyyy, '年', mm, '月', dd,'日'])),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          onTap: (){
            print("打开日期组件");
            _showDatePicker();
          },
        ),

        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(formatDate(now, [HH,":",nn,":",ss])),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          onTap: (){
            print("打开日期组件");
            _showTimePicker();
          },
        )
      ],
    );

  }
}


class Contents2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Contents2State();
  }

}
class _Contents2State extends State {
  final MIN_DATETIME = "1990-1-1";
  final MAX_DATETIME = "2021-12-31";
  String _format = 'yyyy-MMMM-dd';
  // DateTimePickerLocale _locale = DateTimePickerLocale.en_us;
  var now = DateTime.now();
  _showDatePicker() {
    // DatePicker.showDatePicker(
    //   context,
    //   onMonthChangeStartWithFirstDate: true,
    //   pickerTheme: DateTimePickerTheme(
    //     showTitle: true,
    //     confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
    //   ),
    //   minDateTime: DateTime.parse(MIN_DATETIME),
    //   maxDateTime: DateTime.parse(MAX_DATETIME),
    //   initialDateTime: now,
    //   dateFormat: _format,
    //   locale: _locale,
    //   onClose: () => print("----- onClose -----"),
    //   onCancel: () => print('onCancel'),
    //   onChange: (dateTime, List<int> index) {
    //     setState(() {
    //       now = dateTime;
    //     });
    //   },
    //   onConfirm: (dateTime, List<int> index) {
    //     setState(() {
    //       now = dateTime;
    //     });
    //   },
    // );

  }
  _showTimePicker() {

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(formatDate(now, [yyyy, '年', mm, '月', dd,'日'])),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          onTap: (){
            print("打开日期组件");
            _showDatePicker();
          },
        ),

        InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(formatDate(now, [HH,":",nn,":",ss])),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          onTap: (){
            print("打开日期组件");
            _showTimePicker();
          },
        )
      ],
    );

  }
}