import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home/tabs/sura_model.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

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
    var provider = Provider.of<MyProvider>(context);
    if (verses.isEmpty) {
      LoadSuraFile(model.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.mode == ThemeMode.light
              ? "assets/images/main_bg.png"
              : "assets/images/dark_bg.png")
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            model.Suraname,
            style: Theme.of(context).textTheme.bodyMedium,
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
                " ${verses[index]}(${index + 1})",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
                style:  Theme.of(context).textTheme.bodyMedium,
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
