import 'package:flutter/material.dart';
import 'package:islamic_app/Home/home.dart';
import 'package:islamic_app/Home/my_theme.dart';
import 'Home/tabs/ahadeth_detalis.dart';
import 'Home/tabs/sura_detalis.dart';
import 'splshscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadethDetails.routeName: (context) => const AhadethDetails(),
        SplashScreen.routeName: (context) => const SplashScreen(),
      },
    );
  }
}
