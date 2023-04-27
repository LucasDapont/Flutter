import 'dart:math';
import 'package:flutter/material.dart';

//flutter 6
void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _letras = ["A", "B", "C", "D", "E", "F"];
  var _gerar = "Clique para gerar as letras";

  void letrasGeradas() {
    var randomico = Random().nextInt(6);
    setState(() {
      _gerar = _letras[randomico];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App com flutter"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        width: double.infinity, //Ocupa toda largura toda a altura do aplicativo.
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, //espaçamento vertical antes e depois do objeto
          crossAxisAlignment: CrossAxisAlignment.center, //alinhamento horizontal
          children: <Widget>[
            Image.asset("Imagens/logo.png"),
            Text(
              _gerar,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.normal,
                backgroundColor: Colors.teal,
              ),
            ),
            ElevatedButton(
              child: Text(
                "Clique Aqui",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                //ignore:deprecated_member_use
                primary: Colors.teal,
              ),
              onPressed: letrasGeradas,
            )
          ],
        ),
      ),
    );
  }
}