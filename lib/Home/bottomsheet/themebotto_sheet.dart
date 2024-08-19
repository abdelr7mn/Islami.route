import 'package:flutter/material.dart';

class themebottomsheet extends StatelessWidget {
  const themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height  * 0.3 ,
      child: Padding(
        padding:const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("light"), Icon(Icons.done_outline_outlined)],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Dark"), Icon(Icons.done_outline_outlined)],
            )
          ],
        ),
      ),
    );
    ;
  }
}
