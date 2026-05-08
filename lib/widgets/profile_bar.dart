import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class ProfileBar extends StatelessWidget {
  IconData image;
  String title;
  String description;
  ProfileBar({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(
      padding: const EdgeInsets.only(left: 15,right: 15, ),
      child: Container(
        height: 70,
        width: 475,
        padding: EdgeInsets.only(left: 20,right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            15,
          ),
          color: const Color.fromARGB(153, 150, 150, 150),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(children: [Icon(image,color: Colors.blue,),
            Padding(padding: EdgeInsetsGeometry.only(left: 20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: 8)),
                Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: const Color.fromARGB(255, 0, 0, 0))),
                Text(description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: const Color.fromARGB(255, 0, 0, 0)),),
              ],
            ),],) ,
            
           
              Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
