import 'package:clot/model/products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repository/products.dart';

class mainViewModel extends GetxController{
  final searchController = TextEditingController();
  final searchFocusNode = FocusNode();

  RxList<Product> products = <Product>[].obs;

  void getProducts(){
    products.addAll(dataReop().add_data());

  }
}