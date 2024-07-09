import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/quran_logo.png",height: 227,width: 205,),
        Divider(thickness: 3,color: Color(0xffB7935F)),
        Text('اسم السورة',textAlign: TextAlign.center,style: TextStyle(fontFamily: 'ElMessiri',fontSize: 25),),
        Divider(thickness: 3,color: Color(0xffB7935F)),
      ],
    );
  }
}
