import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases =[
    "Faça. Ou não faça. Não existe a tentativa.",
    "O medo é o caminho para o lado negro. O medo leva a raiva, a raiva leva ao ódio, o ódio leva ao sofrimento.",
    "A morte é uma parte natural da vida. Feliz fique por aqueles que na Força se transformam. Apego leva ao ciúmes, a sombra da ganância isso é.",
    "Transmita o que aprendeu. Força, mestria. Mas fraqueza, insensatez, fracasso também. Sim, fracasso acima de tudo. O maior professor, o fracasso é. Nós somos o que eles crescem além. Esse é o verdadeiro fardo de todos os mestres.",
    "Esteja consciente de seus pensamentos. Eles traem você.",
    "Lembre-se: seu foco determina a sua realidade.",
    "Deixe o passado morrer. Mate-o, se for preciso. É o único jeito de cumprir o seu destino.",
    "Se você viver tempo suficiente, você vê os mesmos olhos em pessoas diferentes.",
    "É assim que vamos ganhar. Não lutando contra o que odiamos, mas salvando o que amamos.",
    "Eu tenho um mau pressentimento sobre isso.",
    "Que a Força esteja com você.",
    "Guerras Não Fazem Ninguém Maior!",
    "Um Jedi usa a força para conhecimento e defesa, nunca para ataque",
    "Raiva, medo, agressão. Ao lado sombrio elas pertencem",
    "Sempre em movimento é o Futuro",
    "Seus olhos podem te enganar, não confie neles.",
    "A capacidade de falar não torna você inteligente.",
    "Sua falta de fé é irritante.",
    "Treine a si mesmo a deixar partir tudo que teme perder.",
    "Muitas das verdades que temos dependem de nosso ponto de vista.",
    "Mais vale um fracasso honroso do que um sucesso indigno.",
    "Você não pode impedir as mudanças, assim como não pode impedir o pôr do sol.",
    "Com o tempo, aprenderá a confiar em seus instintos... Então, será invencível!",
    "O universo está assim porque as pessoas não se ajudam.",
    "Um plano só é bom nas mãos de quem pode executá-lo.",
    "Quanto maior o ego, maior a queda.",
    "Você não pode fugir de seu destino!",
    "Em um lugar escuro estamos nós. E mais conhecimento ilumina nosso caminho.",
    "Muito a aprender você ainda tem.",
    "O lado negro não é mais poderoso, apenas mais rápido, mais fácil e mais sedutor.",
    "O lado negro obscurece tudo.",
    "Grande guerreiro? Guerra não faz grande ninguém.",
    "Seu excesso de confiança é sua fraqueza.",
    "Na minha experiência, não existe sorte.",
    "Este é um novo dia, um novo começo.",
    "A esperança não foi perdida hoje. Foi achada.",
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var _numeroSorteado = Random().nextInt(_frases.length);

    setState((){
      _fraseGerada = _frases[_numeroSorteado];
    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONSELHOS JEDI"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 10,color: Colors.lightGreen)

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("images/Logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold
                ),
              ),
                onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}
