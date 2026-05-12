import 'package:flutter/material.dart';

class About2 extends StatelessWidget {
  String title;
  String description;
  About2({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: 170,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20,
        ),
        color: const Color.fromARGB(
          255,
          158,
          158,
          158,
        ),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
