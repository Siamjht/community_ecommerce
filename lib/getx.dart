import 'package:get/get.dart';

class CounterController extends GetxController{
  var count =0.obs;
  RxBool isRed =false.obs;
  List select = [];
  void incrementCounter(){
    count++;
  }



}