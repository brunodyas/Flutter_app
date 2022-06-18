import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Container(
      margin: EdgeInsets.only(top: 40),
           //color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("T1"),
          Text("T2"),
          Text("T3"),
        ],

      ),
    )
  ));
}