import 'package:flutter/material.dart';
import 'package:islamic_app/Home/my_theme.dart';

import '../bottomsheet/langbottom_sheet.dart';
import '../bottomsheet/themebotto_sheet.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("Theme"),
          SizedBox(height: 12),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return themebottomsheet();
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: praimryColor)),
              child: Text("Dark"),
            ),
          ),
          SizedBox(height: 50),
          Text("Language"),
          SizedBox(height: 12),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return LangbottomSheeet();
                },
              );
            },

            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: praimryColor)),
              child: Text("Arabic"),
            ),
          ),
        ],
      ),
    );
  }
}
