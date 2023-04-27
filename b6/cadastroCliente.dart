import 'package:flutter/material.dart';
class cadastroCliente extends StatefulWidget {
  const cadastroCliente({super.key});

  @override
  State<cadastroCliente> createState() => _cadastroClienteState();
}

class _cadastroClienteState extends State<cadastroCliente> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Cadastro de Clientes",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
          labelText: 'Digite seu nome',
            ),
            style: TextStyle(
              fontSize: 20,
            ),
        ),
            TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
          labelText: 'Digite seu endereço',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:40),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                //ignore:deprecated_member_use
                primary:Colors.blue,
                //ignore:deprecated_member_use
                onPrimary: Colors.white70,
                padding: EdgeInsets.all(15),
              ),
              child: Text("Cadastro Cliente",
              style: TextStyle(
                fontSize: 20,
              ),
              ),
              onPressed: (){},
            ),
          )
          ],
        ),
      ),
    );
  }
}