import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    title: "Frases do Dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          FlatButton(
              onPressed: (){
                print("botão clicado!");
              },
              child: Text(
                "Click aqui",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none
                )
              )
          )
        ],
      ),
    )
  ));
}