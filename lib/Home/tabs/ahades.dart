import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/Home/tabs/hadeth_model.dart';

class AhadesTab extends StatefulWidget {
  AhadesTab({super.key});

  @override
  State<AhadesTab> createState() => _AhadesTabState();
}

class _AhadesTabState extends State<AhadesTab> {
  List<HadethModel> allahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allahadeth.isEmpty) {
      LoadAhadethFiles();
    }
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
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(allahadeth[index].title);
            },
          ),
        )
      ],
    );
  }

  LoadAhadethFiles() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> ahadeth = value.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadethOne = ahadeth[i];

        List<String> hadethLines = hadethOne.split("/n");

        String title = hadethLines[0];

        hadethLines.remove(0);

        List<String> content = hadethLines;

        HadethModel hadethModl = HadethModel(title, content);
        allahadeth.add(hadethModl);
        print(hadethModl.title);
      }
      setState(() {});    
    });
  }
}
