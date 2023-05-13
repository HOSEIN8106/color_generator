import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageController extends GetxController{
  var isGradient = false.obs;
  Rx<Color> randomColor = Colors.white.obs;
  Rx<Color> randomColor2 = Colors.white.obs;
  Rx<LinearGradient> gradient = LinearGradient(colors: [Colors.white,Colors.white]).obs;


  void makeGradientColor(){
    randomColor.value =Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    randomColor2.value =Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    gradient.value =  LinearGradient(colors: [
      randomColor.value,
      randomColor2.value
    ]);
  }
  void makeSolidColor(){
    randomColor.value =Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  void changeColorStyle(){
    if(isGradient.value){
      isGradient.value = false;
    }else{
      isGradient.value = true;
    }
  }
}