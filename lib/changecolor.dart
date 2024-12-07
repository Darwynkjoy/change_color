import 'dart:math';
import 'package:changecolor_provider/changecolor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Changecolor extends StatefulWidget{
  @override
  State<Changecolor> createState()=> _Changecolorstate();
}
class _Changecolorstate extends State<Changecolor>{
  @override
  Widget build(BuildContext context){
      final colorChanger=Provider.of<ChangecolorProvider>(context);
    return GestureDetector(
      onTap: colorChanger.Changecolor,
      child: Scaffold(
        backgroundColor: colorChanger.backgroundColor,
        body: Column(
          children: [
            SizedBox(height: 250,),
            Center(child: Text("Tap to change color",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: colorChanger.textColor),)),
          ],
        ),
      ),
    );
  }
}