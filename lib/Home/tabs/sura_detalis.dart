import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home/tabs/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "SuraDetails";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      LoadSuraFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_bg.png")),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            model.Suraname,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
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
                " ${verses[index]}(${index + 1})",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'ElMessiri',
                  fontSize: 35,
                ),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  LoadSuraFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");

    List<String> Suralines = sura.split("\n");
    verses = Suralines;
    setState(() {});
  }
}
