  import 'package:flutter/material.dart';

//flutter 2

void main(List<String> args) {
  runApp(new MaterialApp(
    title: 'Meu primeiro projeto',
    home: Row(
      children: [
      Text("Flutter", style: TextStyle(
fontSize: 30,
color: Colors.blue,
fontStyle: FontStyle.italic,
decoration: TextDecoration.none, //retira o sublinhado
wordSpacing: 20, //espaçamento entre as palavras
      )),
      Text("Tarde"),
      ],
    ),
  ));
}