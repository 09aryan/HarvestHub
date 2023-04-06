import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

enum singinCharacter { fill, outline }

class ProductOverView extends StatefulWidget {
  //const ProductOverView({super.key});
  final String productName;
  final String productImage;
  ProductOverView({required this.productName, required this.productImage});

  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {
  singinCharacter character = singinCharacter.fill;
  Widget bottomNavigatorBar({
    required Color iconColor,
    required Color backgroundColor,
    required Color color,
    required String title,
    required IconData iconData,
    //required Function onTap,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigatorBar(
            backgroundColor: Colors.yellow,
            color: Colors.black,
            iconColor: Colors.grey,
            title: "add to wishlist",
            iconData: Icons.favorite_outline,
            //onTap:
          ),
          bottomNavigatorBar(
            backgroundColor: Colors.yellow,
            color: Colors.white,
            iconColor: Colors.grey,
            title: "add to wishlist",
            iconData: Icons.share_outlined,
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Product OvervIEW",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(children: [
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            child: Column(children: [
              ListTile(
                title: Text(widget.productName ?? ""),
                subtitle: Text("rs50"),
              ),
              Container(
                height: 250,
                padding: EdgeInsets.all(40),
                child: Image.network(
                  widget.productImage ?? "",
                ),
              ),
              Container(
                //color: Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Text(
                  "availble otipns",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green,
                        ),
                        Radio(
                          value: singinCharacter.fill,
                          groupValue: character,
                          activeColor: Colors.green,
                          onChanged: (value) {
                            setState(() {
                              character = value!;
                            });
                          },
                        ),
                      ],
                    ),
                    Text("Rs 50"),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 15,
                            color: Colors.black,
                          ),
                          Text(
                            "add",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Text(data)
            ]),
          ),
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "THIS IS MY PROCUCT",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "A diet rich in vegetables and fruits can lower blood pressure, reduce the risk of heart disease and stroke, prevent some types of cancer, lower risk of eye and digestive problems, and have a positive effect upon blood sugar, which can help keep appetite in check.",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
            )
          ]),
        ))
      ]),
    );
  }
}
