import 'package:flutter/material.dart';

class AhadesTab extends StatelessWidget {
  const AhadesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/hadeth_logo.png",
          height: 219,
          width: 312,
        ),
        Divider(thickness: 3, color: Color(0xffB7935F)),
        Text(
          'الأحاديث ',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'ElMessiri', fontSize: 25),
        ),
        Divider(thickness: 3, color: Color(0xffB7935F)),
      ],


    );
  }
}
