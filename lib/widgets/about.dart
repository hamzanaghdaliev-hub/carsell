import 'dart:math';

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  String title;
  String description;
  About({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(153, 155, 155, 155)
      ),
      width: 150,
      height: 100,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          Text(description)
        ],
      ),
    );
  }
}
