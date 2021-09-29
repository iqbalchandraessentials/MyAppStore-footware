import 'package:flutter_application_1/models/product_model.dart';
import 'package:flutter/material.dart';

class Wishlist with ChangeNotifier {
  List<ProductModel> _wishlist = [];
  List<ProductModel> get wishlist => _wishlist;

  set wishlist(List<ProductModel> wishlist){
    _wishlist = wishlist;
    notifyListeners();
  }

  

}
