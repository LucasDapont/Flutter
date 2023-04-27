import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String campo, usuario;

  Home({required this.campo, required this.usuario});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela 1"),
        backgroundColor: Colors.green.shade100,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children:<Widget> [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //ignore:deprecated_member_use
                primary: Colors.green,
                padding: EdgeInsets.all(20),
              ),
              child: Text("Próxima tela"),
              onPressed:((){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Tela(campo:" Faculdade QI", usuario:"Andreza")));
              }) ,
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                  padding: EdgeInsets.all(20),  
                ),
                child: Text("Próxima tela de usuário"),
                onPressed: (() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TelaUsuario(campo : "andreza.aham@gmail.com", usuario : "Andreza QI")));
                }),
              ))
          ],
        ),
      )
    );
  }
}