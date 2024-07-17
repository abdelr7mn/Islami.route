import 'package:flutter/material.dart';
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
  int selecteindex =0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text('  إسلامى ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'ElMessiri',
                )),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selecteindex,
            onTap: (value) {
              selecteindex = value;
              setState(() {
              });
            },
            backgroundColor: Color(0xffB7935F),
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: "",
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: "",
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/moshaf.png')),
                label: "",
                backgroundColor: Color(0xffffffff),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: "",
                backgroundColor: Color(0xffB7935F),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
                backgroundColor: Color(0xffB7935F),
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
    RadioTab(),
    AhadesTab(),
    SettingTab(),
  ];
}
