import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/Home/home.dart';
import 'package:islamic_app/Home/my_theme.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'Home/tabs/ahadeth_detalis.dart';
import 'Home/tabs/sura_detalis.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: EasyLocalization(
          supportedLocales: [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          saveLocale: true,// <-- change the path of the translation files
          fallbackLocale: Locale('en', 'US'),

          child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
