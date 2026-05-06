import 'package:card_swiper/card_swiper.dart';
import 'package:carsell/const/const.dart';
import 'package:carsell/widgets/buyed_cars.dart';
import 'package:carsell/widgets/input_textfield.dart';
import 'package:carsell/widgets/my_cars.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final _searchTextController =
    TextEditingController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    //Size size = Utils
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Our Cars"),
        ),
      ),

      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Swiper(
              duration: 1500,
              autoplayDelay: 8000,
              itemBuilder:
                  (
                    BuildContext context,
                    int index,
                  ) {
                    return Image.asset(
                      Consts
                          .carImages[index],
                      fit: BoxFit.fill,
                    );
                  },
              autoplay: true,
              pagination: SwiperPagination(
                alignment:
                    Alignment.bottomCenter,
                builder:
                    DotSwiperPaginationBuilder(
                      color: Colors.black,
                      activeColor:
                          Colors.indigo,
                    ),
              ),
              itemCount:
                  Consts.carImages.length,
            ),
          ),
          SizedBox(height: 30),
          InputTextfield(
            text2: "Search for cars",
            inputTextController:
                _searchTextController,
          ),
          SizedBox(height: 50),
          MyCars(image: "assets/pexels-photo-1545743.jpeg", title: "BMW PRO MAX", description: "IDK about BMW", price: "100,000\$"),
          SizedBox(height: 80,),
           MyCars(image: "assets/pexels-photo-1545743.jpeg", title: "BMW PRO MAX", description: "IDK about BMW", price: "100,000\$"),
          BuyedCars(image: "assets/pexels-photo-1545743.jpeg", title: "BMW PRO MAX", description: "IDK about BMW", qty: "Qty: 1", date: "5/6/2026", price: "100,000\$")
        ],
      ),
    );
  }
}
