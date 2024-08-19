import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:   const EdgeInsets.only(top: 200),
          child: Image.asset(
            "assets/images/radio.png",
            height: 222,
            width: 400,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'إذاعة القرآن الكريم',
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'ElMessiri', fontSize: 25,),
        ),
        SizedBox(height: 41),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.skip_previous,size: 50,color: Color(0xffB7935F)),
          Icon(Icons.play_arrow,size: 50,color: Color(0xffB7935F)),
          Icon(Icons.skip_next,size: 50,color: Color(0xffB7935F)),
        ],)
      ],
    );
  }
}
