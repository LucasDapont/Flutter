import 'package:flutter/material.dart';
class CamposCheckedBox extends StatefulWidget {
  const CamposCheckedBox({super.key});

  @override
  State<CamposCheckedBox> createState() => _CamposCheckedBoxState();
}

class _CamposCheckedBoxState extends State<CamposCheckedBox> {
bool _selecionaValor = false;
bool _selecionaValor1 = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados CheckBox'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        child: Column(
          children:<Widget> [
            Text('Selecione um time'),
            CheckboxListTile(
              title:Text("Gremio"),
              value: _selecionaValor, 
              onChanged: (_valorCheck){
                setState(() {
                  if (_selecionaValor) {
                    _selecionaValor = false;                   
                  } else {
                    _selecionaValor = true;
                  }
                });
                print("Valor selecionado = " + _selecionaValor.toString());
              }),
              CheckboxListTile(
                title: Text("Internacional"),
                value: _selecionaValor1, 
                onChanged: (_valorCheck){
                setState(() {
                  if (_selecionaValor1) {
                    _selecionaValor1 = false;                   
                  } else {
                    _selecionaValor1 = true;
                  }
                });
                print("Valor selecionado = " + _selecionaValor1.toString());
              }),
          ],
        ),
      ),
    );
  }
}