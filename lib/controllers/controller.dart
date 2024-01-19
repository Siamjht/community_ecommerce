

import 'package:community_ecommerce/models/product_details.dart';
import 'package:community_ecommerce/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List imagesList = [
    AppImages.blouse,
    AppImages.eveningDress,
    AppImages.sportDress,
    AppImages.tShirt,
    AppImages.categoryAccessories,
    AppImages.categoryCloths,
    AppImages.categoryNew,
    AppImages.categoryShoes,
  ];

  List<ProductDetails> products = [
    ProductDetails(image: AppImages.blouse, name: "Blouse", color: "Red", size: 'L', price: "15\$", quantity: 10),
    ProductDetails(image: AppImages.eveningDress, name: "Evening Dress", color: "Yellow", size: 'M', price: "25\$", quantity: 8),
    ProductDetails(image: AppImages.sportDress, name: "Sport Dress", color: "Black", size: 'XL', price: "10\$", quantity: 2),
    ProductDetails(image: AppImages.tShirt, name: "t-Shirt", color: "Red", size: 'L', price: "18\$", quantity: 4),
    ProductDetails(image: AppImages.categoryAccessories, name: "Locket", color: "Golden", size: 'Thin', price: "12\$", quantity: 5),
    ProductDetails(image: AppImages.categoryCloths, name: "Jens Pants", color: "Blue", size: '38', price: "10\$", quantity: 7),
    ProductDetails(image: AppImages.categoryNew, name: "Jens Jacket", color: "Violet", size: 'XXL',price: "15\$", quantity: 10),
    ProductDetails(image: AppImages.categoryShoes, name: "Shoes", color: "Black", size: '41', price: "10\$", quantity: 20),
  ];


  RxBool isChecked = false.obs;
  bool isValided = true;
}