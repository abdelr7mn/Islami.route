import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Center(
          child: Text(
            ' اسلامى ',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'ElMessiri',
            color: Colors.black
            )
          ),
        ),
      ),
    );
  }
}
