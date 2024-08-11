import 'package:flutter/material.dart';
import 'package:islamic_app/Home/tabs/hadeth_model.dart';
import 'ahades.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "AhadethDetails";

  const AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_bg.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            model.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w700,
              fontFamily: 'ElMessiri',
            ),
          ),
        ),
        body: Card(
          color: Color(0xffF8F8F8),
          elevation: 5,
          shape: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.transparent,
              )),
          margin: EdgeInsets.all(12),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                model.content[index],
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ElMessiri',
                  fontSize: 20,
                ),
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ),
    );
  }
}
