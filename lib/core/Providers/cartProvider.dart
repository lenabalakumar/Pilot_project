import 'package:flutter/material.dart';
import '../Models/productModel.dart';

class CartProvider with ChangeNotifier{
  List<ProductModel> _cartProducts = [];
  double _price = 0.0;

  void add(ProductModel productModel){
    _cartProducts.add(productModel);
    _price += productModel.productPrice;
    notifyListeners();
  }

  void remove(ProductModel productModel){
    _cartProducts.remove(productModel);
    _price -= productModel.productPrice;
    notifyListeners();
  }

  List<ProductModel> get basketItem{
    return _cartProducts;
  }

}