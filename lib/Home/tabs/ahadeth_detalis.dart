import 'package:flutter/material.dart';
import 'ahades.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "AhadethDetails";

  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
         image: DecorationImage(image: AssetImage("assets/images/main_bg.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text('الأحاديث'),
        ),
      ),
    );
  }
}
