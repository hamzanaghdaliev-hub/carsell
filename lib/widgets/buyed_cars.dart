import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BuyedCars extends StatelessWidget {
  String image;
  String title;
  String description;
  String qty;
  String date;
  String price;
  BuyedCars({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.qty,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.fromLTRB(
        12,
        5,
        12,
        5,
      ),
      margin: EdgeInsets.fromLTRB(
        15,
        5,
        15,
        5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight:
                          FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        description,
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 170,),
                      Icon(Icons.arrow_forward_ios,size: 15,),

                    ],
                  ),
                  
                  Row(
                    children: [
                      Text(qty),
                      SizedBox(width: 200),
                      Text(date),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment
                            .spaceBetween,
                    children: [
                      Text(
                        price,
                        style: TextStyle(
                          fontWeight:
                              FontWeight
                                  .bold,
                          fontSize: 15,
                          color:
                              const Color.fromARGB(
                                255,
                                0,
                                255,
                                34,
                              ),
                        ),
                      ),

                      // SizedBox(width: 100,),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
