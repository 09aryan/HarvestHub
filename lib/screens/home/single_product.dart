//import 'dart:ffi';

import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final VoidCallback onTap;
  SingleProduct(
      {required this.productImage,
      required this.productName,
      required this.onTap});

  //const SingleProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            height: 240,
            width: 165,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(
                      productImage,
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productName,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '50.RS / 50 GRAMS',
                            style: TextStyle(
                              color: Colors.grey,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(left: 2),
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      // color: Colors.blue,
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(children: [
                                    Expanded(
                                      child: Text(
                                        '50 Gram',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                    Center(
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        size: 20,
                                        color: Colors.yellow,
                                      ),
                                    )
                                  ]),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  // color: Colors.red,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey,
                                      ),
                                      //    color: Colors.red,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.remove,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(
                                        Icons.add,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
