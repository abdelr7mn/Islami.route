import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  SebhaTabState createState() => SebhaTabState();
}

class SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int phase = 0;
  String buttonText = 'سبحان الله';

  void incrementCounter() {
    if (counter < 33) {
      setState(() {
        counter++;
      });
    } else {
      setState(() {
        counter = 1;
        phase++;
        if (phase > 3) phase = 0;
        switch (phase) {
          case 0:
            buttonText = '  سبحان الله  ';
            break;
          case 1:
            buttonText = '  الحمدلله  ';
            break;
          case 2:
            buttonText = ' لا اله الا الله ';
            break;
          case 3:
            buttonText = '  الله اكبر ';
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/head_sebha_logo.png",
            width: 53, height: 100),
        Image.asset("assets/images/body_sebha_logo.png",
            width: 232, height: 243),
        SizedBox(height: 15),
        Text(
          "عدد التسبيحات",
          style: TextStyle(fontSize: 25, fontFamily: 'ElMessiri'),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Center(
          child: Container(
            height: 81,
            width: 69,
            color: Color(0xffB7935F),
            child: Center(
              child: Text(
                '$counter',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: GestureDetector(
            onTap: incrementCounter,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),// Tan color
                borderRadius: BorderRadius.circular(51),
              ),
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
