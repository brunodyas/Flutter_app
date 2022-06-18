import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Container(
      margin: EdgeInsets.only(top: 40),
           //color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Image.asset(
        "images/mesa.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ));
}