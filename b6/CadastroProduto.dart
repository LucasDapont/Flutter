import 'package:flutter/material.dart';

class CadastroProduto extends StatefulWidget {
  const CadastroProduto({super.key});

  @override
  State<CadastroProduto> createState() => _cadastroClienteState();
}

class _cadastroClienteState extends State<CadastroProduto> {
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
              "Cadastro de Produto",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
            ),
            TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
          labelText: 'Digite a marca',
            ),
            style: TextStyle(
              fontSize: 18,
            ),
        ),
            TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
          labelText: 'Digite o código de barra de barra',
            ),
            style:TextStyle(
              fontSize: 18,
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
              child: Text("Cadastro Produto",
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