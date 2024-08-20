import 'package:flutter/material.dart';
import 'package:islamic_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class themebottomsheet extends StatelessWidget {
  const themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(

            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.light);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("light"), Icon(Icons.done_outline_outlined)],
                ),
              ),
              SizedBox(height: 12),
              InkWell(
                onTap: () {
                  pro.changeTheme(ThemeMode.dark);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Dark"), Icon(Icons.done_outline_outlined)],
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
