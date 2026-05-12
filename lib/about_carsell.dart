import 'package:carsell/widgets/about.dart';
import 'package:carsell/widgets/about2.dart';
import 'package:flutter/material.dart';

class AboutCarsell extends StatelessWidget {
  const AboutCarsell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("About Carsell"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              height: 250,
              
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(
                      20,
                    ),
                color: const Color.fromARGB(
                  255,
                  1,
                  66,
                  119,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                
                  
                   Text("Welcome to Carsell! ",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 30),),
                
                Text("We are the best car selling app in the world. We offer a wide range of cars for sale, from luxury to economy.",style: TextStyle(color: Colors.white,fontSize: 18),),
              ]),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                About(title: "20+", description: "cars for sale"),
                 About(title: "20+", description: "cars for sale"),
                About(title: "10+", description: "dealers"),
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                About2(title: "about our cars", description: "Our cars are of the highest quality. We offer a wide range of cars for sale, from luxury to economy. We also offer a wide range of financing options."),
                SizedBox(height: 20,),
                 About2(title: "about our dealers", description: "Our dealers are the best in the world. They are knowledgeable and friendly. They will help you find the perfect car for you."),
              ],
            )
          ],
        ),
      ),
    );
  }
}
