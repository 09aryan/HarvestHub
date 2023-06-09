import 'package:flutter/material.dart';
import 'package:foodapp/providers/product_provider.dart';
import 'package:foodapp/screens/home/drawer_side.dart';
import 'package:foodapp/screens/product_overview/product_overview.dart';
import 'package:provider/provider.dart';
import './single_product.dart';
//import 'dart:ui';
import 'package:foodapp/screens/search/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;
  //ProductProvider productProvider;

  Widget _buildHerbsProduct(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Herbs Seasonings'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(
                      search: productProvider.getHerbsProdcutDataList,
                    ),
                  ),
                );
              },
              child: Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getHerbsProdcutDataList.map(
              (herbsProductData) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productPrice: herbsProductData.productPrice,
                          productImage: herbsProductData.ProductImage,
                          productName: herbsProductData.productName,
                        ),
                      ),
                    );
                  },
                  productPrice: herbsProductData.productPrice,
                  productImage: herbsProductData.ProductImage,
                  productName: herbsProductData.productName,
                );
              },
            ).toList(),
            // children: [
            //   SingleProduct(
            //     onTap: () {
            //       Navigator.of(context).push(
            //         MaterialPageRoute(
            //           builder: (context) => ProductOverView(
            //             productImage:
            //                 'https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
            //             productName: "fresh basil",
            //           ),
            //         ),
            //       );
            //     },
            //     productImage:
            //         'https://images.unsplash.com/photo-1550258987-190a2d41a8ba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80',
            //     productName: "Fresh basil",
            //   ),

            // ],
          )) // children: [
    ]
        // ],
        );
  }

  Widget _buildFruits(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Herbs Seasonings'),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(
                      search: productProvider.getFreshProductDataList,
                    ),
                  ),
                );
              },
              child: Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: productProvider.getFreshProductDataList.map(
              (freshProductData) {
                return SingleProduct(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProductOverView(
                          productPrice: freshProductData.productPrice,
                          productImage: freshProductData.ProductImage,
                          productName: freshProductData.productName,
                        ),
                      ),
                    );
                  },
                  productPrice: freshProductData.productPrice,
                  productImage: freshProductData.ProductImage,
                  productName: freshProductData.productName,
                );
              },
            ).toList(),
          )) // children: [
    ]
        // ],
        );
  }

  Widget _buildroots(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Herbs Seasonings'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(
                        search: productProvider.getgrainsProductDataList,
                      ),
                    ),
                  );
                },
                child: Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: productProvider.getgrainsProductDataList.map(
                (grainsProductData) {
                  return SingleProduct(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProductOverView(
                            productPrice: grainsProductData.productPrice,
                            productImage: grainsProductData.ProductImage,
                            productName: grainsProductData.productName,
                          ),
                        ),
                      );
                    },
                    productPrice: grainsProductData.productPrice,
                    productImage: grainsProductData.ProductImage,
                    productName: grainsProductData.productName,
                  );
                },
              ).toList(),
            )),
      ],
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fatchHerbsProdcutData();
    productProvider.fatchgrainsProductData();
    productProvider.fatchFreshProductData();
    // productProvider.fatchRootProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    // ProductProvider productProvider = Provider.of(
    //   context,
    // );
    // productProvider.fatchHerbsProdcutData();
    //   super.initState();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 230, 230),
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Search(
                          search: productProvider.gerAllProductSearch,
                        )));
              },
              icon: Icon(
                Icons.search,
                size: 18,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xffd4d181),
                  child: Icon(
                    Icons.shop,
                    size: 18,
                    color: Colors.black,
                  ))),
        ],
        backgroundColor: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ9XFyB4gq9JAh-ZdSdGBvyDvHr7sNzkKpkxQGlylpxFN0h1Z4msjv87LCDHzaPWPmT2Q&usqp=CAU'),
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              // color: Colors.red,
              child: Row(children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    //   color: Colors.red,
                    child: Column(children: [
                      Padding(
                          padding:
                              const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 60,
                            //  color: Colors.blue,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 151, 139, 29),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                )),
                            child: Text(
                              'VEGI',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3))
                                  ]),
                            ),
                          )),
                      Text(
                        '30% Off',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.green[100],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'On all vegetables products',
                          style: TextStyle(
                            // fontSize: 40,
                            color: Colors.green[100],
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ]),
            ),
            _buildHerbsProduct(context),
            _buildFruits(context),
            _buildroots(context),
          ],
        ),
      ),
    );
  }
}
