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
        appBar: AppBar(
          title: Text(
            model.title,
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
                style: Theme.of(context).textTheme.bodyMedium,
              );
            },
            itemCount: model.content.length,
          ),
        ),
      ),
    );
  }
}
