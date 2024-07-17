import 'package:flutter/material.dart';
import 'package:islamic_app/Home/tabs/sura_detalis.dart';
import 'package:islamic_app/Home/tabs/sura_model.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  List<String> Suraname = ["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Image.asset(
        "assets/images/quran_logo.png",
        height: 227,
        width: 205,
      ),
      Divider(thickness: 3, color: Color(0xffB7935F)),
      Text(
        'اسم السورة',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'ElMessiri', fontSize: 25),
      ),
      Divider(thickness: 3, color: Color(0xffB7935F)),
      Expanded(
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Row(
              children: [
                Expanded(

                    child: Align(
                  alignment: Alignment.centerRight,
                    child: ImageIcon(AssetImage('assets/images/quran.png'),color: Colors.black))),
                Expanded(
                  flex:4,
                  child: Divider(
                    thickness: 1.5,
                    color: Color(0xffB7935F),
                  ),
                ),
                Expanded(child: Align(
                    alignment: Alignment.centerLeft,
                    child: ImageIcon(AssetImage('assets/images/quran.png',),color: Colors.black))),
              ],
            );
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, SuraDetails.routeName,
                arguments: SuraModel( Suraname[index],index)
                );
              },
              child: Text( Suraname[index],
                style: TextStyle(fontSize: 25, fontFamily: 'ElMessiri'),
                textAlign: TextAlign.center,
              ),
            );
          },
          itemCount: Suraname.length,
        ),
      )
    ]);
  }
}
