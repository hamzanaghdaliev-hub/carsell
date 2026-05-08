import 'package:flutter/material.dart';

class HiNameSurname extends StatelessWidget {
  final String name;
  final String surname;
  const HiNameSurname({
    super.key,
    required this.name,
    required this.surname,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 70,
        width: 475,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
         color: const Color.fromARGB(153, 150, 150, 150),
      ),
     
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left: 20,top: 10)),
          Text(
            "Hi, ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,fontSize: 30
            ),
          ),
          Text(name,style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,fontSize: 25
            ),),
            SizedBox(width: 10,),
          Text(surname,style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,fontSize: 25
            ),),
        ],
      ),
    );
  }
}
