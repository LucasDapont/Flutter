import'package:flutter/material.dart';
class CamposRa extends StatefulWidget {
  const CamposRa({super.key});

  @override
  State<CamposRa> createState() => _CamposRaState();
}

class _CamposRaState extends State<CamposRa> {
  bool _escolhaEsporte = false;
  bool _escolha = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolha o esporte preferido"),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        child: Column(
          children:<Widget> [
            RadioListTile(
              title: Text("Futebol"),
              value: _escolha = false, 
              groupValue: _escolhaEsporte, 
              onChanged: (_escolha){
                setState(() {
                 if(_escolhaEsporte){
                  _escolhaEsporte = false;
                 } else{
                  _escolhaEsporte = true;
                 }
                });
              }),
            RadioListTile(
              title: Text("Natação"),
              value: _escolha = true, 
              groupValue: _escolhaEsporte, 
              onChanged: (_escolha){
                setState(() {
                 if(_escolhaEsporte){
                  _escolhaEsporte = false;
                 } else{
                  _escolhaEsporte = true;
                 }
                });
              }),
              ElevatedButton(
                child: Text("Salvar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ),
                style: ElevatedButton.styleFrom(
                  //ignore:deprecated_member_use
                primary: Colors.lightBlueAccent,
                ),
                onPressed: (){
                  print("Resultado " + _escolhaEsporte.toString());
                },
                
                )
          ],
        ),
      ),
    );
  }
}