import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'colors.dart';

ThemeData darkTheme = ThemeData(
  //primarySwatch: defaultColor,
  scaffoldBackgroundColor: HexColor('333739'),
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor('333739'),
      statusBarIconBrightness: Brightness.light,
    ),
    elevation: 0.0,
    color: HexColor('333739'),
    titleTextStyle: TextStyle(
      //fontFamily: 'Jannah',
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
    backgroundColor: HexColor('333739'),
  ),
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 1.3,
    ),
  ),
  //fontFamily: 'Jannah',
);

ThemeData lightTheme = ThemeData(
  //primarySwatch: mainColor,
  scaffoldBackgroundColor: mainColor,
  appBarTheme: AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: mainColor,
      statusBarIconBrightness: Brightness.dark,
    ),
    elevation: 0.0,
    color: Colors.white,
    titleTextStyle: TextStyle(
      //fontFamily: 'Jannah',
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: Color.fromRGBO(0, 196, 122, 1.0),
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      height: 1.3,
    ),
  ),
  fontFamily: 'Arabic',
);