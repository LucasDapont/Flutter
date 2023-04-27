import 'package:flutter/material.dart';

//flutter 4

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("Meu aplicativo"),
          backgroundColor: Colors.blue,
        ),
        body:Padding(
          padding:EdgeInsets.all(16),
          child:Text("Conteúdo do App"),
        ),
        bottomNavigationBar: BottomAppBar(
          color:Colors.blueAccent,
          child:Padding(
            padding:EdgeInsets.all(16),
            child:Row(
              children:<Widget>[
              Text("Copyright Lucas Dapont"),
              ]
            )
          )
        )),
     ),
   );
  }