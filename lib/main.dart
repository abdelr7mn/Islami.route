import 'package:flutter/material.dart';
import 'package:islamic_app/Home/home.dart';
import 'package:islamic_app/Home/my_theme.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'Home/tabs/ahadeth_detalis.dart';
import 'Home/tabs/sura_detalis.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyTheme.LightTheme,
      darkTheme: MyTheme.DarkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        AhadethDetails.routeName: (context) => AhadethDetails(),
      },
    );
  }
}
