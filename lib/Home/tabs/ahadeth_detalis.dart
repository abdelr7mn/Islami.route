import 'package:flutter/material.dart';
import 'package:islamic_app/Home/tabs/hadeth_model.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';
import 'ahades.dart';

class AhadethDetails extends StatelessWidget {
  static const String routeName = "AhadethDetails";

  AhadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.mode == ThemeMode.light
              ? "assets/images/main_bg.png"
              : "assets/images/dark_bg.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            model.title,style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        body: Card(
          color: provider.mode == ThemeMode.light
              ? Color(0xffF8F8F8)
              : Color(0xff141A2E),
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
