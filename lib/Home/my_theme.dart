import 'package:flutter/material.dart';

Color praimryColor = Color(0xffB7935F);
Color praimrydarkColor = Color(0xff141A2E);
Color blackColor = Color(0xff242424);
Color yellowColor = Color(0xffFACC1D);

class MyTheme {
  static ThemeData LightTheme = ThemeData(
    primaryColor: praimryColor,
    dividerColor: praimryColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: praimryColor,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 30, color: blackColor),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
      bodyMedium: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
      bodySmall: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    ),
  );

  static ThemeData DarkTheme = ThemeData(
    primaryColor: praimrydarkColor,
    dividerColor: yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: praimrydarkColor,
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(size: 30, color: Colors.white),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Color.fromRGBO(0, 0, 0, 1),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: yellowColor,
      ),
      bodySmall: TextStyle(
        fontFamily: 'ElMessiri',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
  );
}
