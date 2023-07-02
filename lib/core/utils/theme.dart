import 'package:flutter/material.dart';

import '../../constants.dart';

ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      appBarTheme: appBarTheme(),
      textTheme: textTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

TextTheme textTheme() {
  return const TextTheme(
      bodyLarge: TextStyle(color: kTextColor),
      bodyMedium: TextStyle(color: kTextColor),
    );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Color(0xff888888), fontSize: 18),);
}