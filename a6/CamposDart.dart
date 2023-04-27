import 'package:flutter/material.dart';

//flutter 8

class CamposDart extends StatefulWidget {
  const CamposDart({super.key});

  @override
  State<CamposDart> createState() => _CamposDartState();
}

class _CamposDartState extends State<CamposDart> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes de Entrada"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(labelText: "Digite o usuário"),
              maxLength: 8,
              obscureText: false,
              onSubmitted: (String e) {
                print("O nome é: " + e);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              //ignore:deprecated_member_use
              primary: Colors.red,
              padding: EdgeInsets.all(15),
            ),
            child: Text("Clique no botão"),
            onPressed: () {
              print("nome e:" + _textEditingController.text);
            },
          ),
        ],
      ),
    );
  }
}