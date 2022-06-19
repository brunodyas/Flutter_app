import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    home: HomeStateFul(),
  ));
}

class HomeStateFul extends StatefulWidget {
  const HomeStateFul({Key? key}) : super(key: key);

  @override
  State<HomeStateFul> createState() => _HomeStateFulState();
}

class _HomeStateFulState extends State<HomeStateFul> {
  var titulo = "Metafizer";
  var texto1 = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    titulo = "Vai porra!";
                  });
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.amberAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
                child: Text("$titulo"),
            ),
            Text("$texto1")
          ],
        ),
      ),


    );
  }
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var titulo = "Metafizer";
    var texto1 = DateTime.now().toString();
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.deepPurpleAccent,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text(texto1,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                  wordSpacing: 30,
                ), ),
              Text("Texto2",
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                  wordSpacing: 30,
                ), ),
            ],
          ),
        ),
      ),

    );
  }
}
