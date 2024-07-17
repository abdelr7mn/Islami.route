import 'package:flutter/material.dart';
import 'package:islamic_app/Home/home.dart';

import 'Home/tabs/sura_detalis.dart';

void main() {
  runApp(const MyApp());
}
  class MyApp extends StatelessWidget {

    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:HomeScreen.routeName,
        routes: {
          HomeScreen.routeName:(context) =>  HomeScreen(),
          SuraDetails.routeName:(context) =>  SuraDetails(),
        },
      );
    }
  }

