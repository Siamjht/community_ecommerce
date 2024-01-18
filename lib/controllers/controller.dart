

import 'package:community_ecommerce/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController{
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List imagesList = [AppImages.blouse, AppImages.eveningDress, AppImages.sportDress, AppImages.tShirt];

  RxBool isChecked = false.obs;
  bool isValided = false;
}