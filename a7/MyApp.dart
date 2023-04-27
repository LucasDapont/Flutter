import 'package:flutter/material.dart';

//flutter 9

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Flutter Layout-Colunas e linhas"),
      backgroundColor: Colors.deepPurple,
    ),
    body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("Imagens/astronauta.png"),
          Image.asset("Imagens/espaco.png"),  
          Image.asset("Imagens/pin.png"),
          Image.asset("Imagens/planeta.png"),
        ],
      ),
    ),
    );
  }
}