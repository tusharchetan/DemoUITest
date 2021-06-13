import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/View/DemoScreen.dart';
import 'package:untitled1/utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: Size(1242, 2688),
        builder: () => MaterialApp(
          home: DemoHome(),
        theme:basicTheme()
    ),
    );
  }
}
