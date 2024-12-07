import 'dart:math';

import 'package:flutter/material.dart';

class ChangecolorProvider extends ChangeNotifier{
  Color backgroundColor=Colors.grey;
  Color textColor=Colors.black;
  List<Color>colorList=[
    Colors.black,
    Colors.white,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.red,
    Colors.yellow,
  ];
  void Changecolor(){
      int index=Random().nextInt(colorList.length);
      backgroundColor=colorList[index];
      textColor=colorList[index+1];
      notifyListeners();
  }
}