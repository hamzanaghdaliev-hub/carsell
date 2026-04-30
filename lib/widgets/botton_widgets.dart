import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  String text1;
   ButtonWidgets({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: const Color.fromARGB(255, 0, 4, 255)),
                padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                child: Text(text1,style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              );
  }
}
