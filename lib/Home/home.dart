import 'package:flutter/material.dart';
import 'package:islamic_app/Home/my_theme.dart';
import 'package:islamic_app/Home/tabs/ahades.dart';
import 'package:islamic_app/Home/tabs/quran.dart';
import 'package:islamic_app/Home/tabs/radio.dart';
import 'package:islamic_app/Home/tabs/sebha.dart';
import 'package:islamic_app/Home/tabs/setting.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selecteindex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text('  إسلامى ',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 40),
               ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selecteindex,
            onTap: (value) {
              selecteindex = value;
              setState(() {});
            },
             items: [
               BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "",

              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: "",

              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio_bottum.png')),
                label: "",

              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ],
          ),
          body: tabs[selecteindex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    AhadesTab(),
    RadioTab(),
    SettingTab(),
  ];
}
