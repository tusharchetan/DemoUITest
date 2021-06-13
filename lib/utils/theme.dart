import 'package:flutter/material.dart';

ThemeData basicTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline5: base.headline5!.copyWith(
          fontFamily: 'Roboto',
          fontSize: 18.0,
          color: Colors.black,
        ),
        headline6: base.headline6!
            .copyWith(fontFamily: 'Roboto', fontSize: 14.0, color: Colors.grey),
        headline4: base.headline4!.copyWith(
          fontFamily: 'Roboto',
          fontSize: 22.0,
          color: Colors.black,
        ),
        headline3: base.headline5!.copyWith(
          fontFamily: 'Merriweather',
          fontSize: 22.0,
          color: Colors.grey,
        ),
        caption: base.caption!.copyWith(
          color: Color(0xFFCCC5AF),
        ),
       );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
      textTheme: _basicTextTheme(base.textTheme),
      primaryColor: Color(0xFF177383),
      indicatorColor: Color(0xFFDDFAF0),
      scaffoldBackgroundColor: Color(0xFFEFEFEF),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Color(0xFF177383)),
      accentColor: Color(0xFFFFF8E1),
      iconTheme: IconThemeData(
        color: Colors.black,
        size: 20.0,
      ),

      buttonColor: Color(0xFF25A9AB),
      backgroundColor: Colors.white,
      shadowColor: Colors.grey,
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: Color(0xFF177383),
        unselectedLabelColor: Colors.grey,
      ));
}
