import 'package:flutter/material.dart';

class LangbottomSheeet extends StatelessWidget {
  const LangbottomSheeet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height  * 0.2 ,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Arabic"), Icon(Icons.done_outline_outlined)],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("English"), Icon(Icons.done_outline_outlined)],
              )
            ],
          ),
        ),
      ),
    );
  }
}
