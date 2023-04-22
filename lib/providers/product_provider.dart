import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProdcutList = [];
  late ProductModel productModel;
  fatchHerbsProdcutData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("herbsProduct").get();
    value.docs.forEach((element) {
      productModel = ProductModel(
        ProductImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"),
      );
      newList.add(productModel);
    });
    herbsProdcutList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProdcutDataList {
    return herbsProdcutList;
  }

  ////////////////
  ///
  List<ProductModel> freshProductList = [];

  fatchFreshProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("fruitsProduct").get();

    value.docs.forEach((element) {
      productModel = ProductModel(
        ProductImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"),
      );
      newList.add(productModel);
    });
    freshProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFreshProductDataList {
    return freshProductList;
  }

  ///////
  //
  List<ProductModel> grainsProductList = [];

  fatchgrainsProductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("grainsProduct").get();

    value.docs.forEach((element) {
      productModel = ProductModel(
        ProductImage: element.get("productImage"),
        productName: element.get("productName"),
        productPrice: element.get("productPrice"),
      );
      newList.add(productModel);
    });
    grainsProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getgrainsProductDataList {
    return grainsProductList;
  }
}
