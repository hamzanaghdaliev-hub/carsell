import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';


class MyCars extends StatelessWidget {
  String image;
  String title;
  String description;
  String price;
    MyCars({super.key, required this.image,required this.title,required this.description,required this.price});

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 150,
            padding: EdgeInsets.fromLTRB(12,5,12,5),
            margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: const Color.fromARGB(255, 167, 210, 230)),
            child: Row(
              children: [
                 Image.asset(
                    image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20,bottom: 20),
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue)),
                         Text(description,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue),),
                         Spacer(),
                         Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(price,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.blue)),
                             // SizedBox(width: 100,),
                              Icon(IconlyLight.heart)
                            ],
                          ),
                        
                      ],
                    ),
                  ),
                )
                            
              ],
              
            ),
          
          );
  }
}