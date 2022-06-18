import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      margin: EdgeInsets.all(20),
      //color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Column(
        children: <Widget>[
          Text("T1"),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text("T2"),

          ),

          Text("T3"),
        ],
      ),
    )
  ));
}