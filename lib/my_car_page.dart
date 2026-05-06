import 'package:carsell/widgets/buyed_cars.dart';
import 'package:flutter/material.dart';

class MyCarPage extends StatefulWidget {
  const MyCarPage({super.key});

  @override
  State<MyCarPage> createState() =>
      _MyCarPageState();
}

class _MyCarPageState
    extends State<MyCarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("My Cars"),
      ),
      body: Column(children: [BuyedCars(image: "assets/pexels-photo-1545743.jpeg", title: "BMW PRO MAX", description: "IDK about BMW", qty: "Qty: 1", date: "5/6/2026", price: "100,000\$")],),
    );
  }
}
