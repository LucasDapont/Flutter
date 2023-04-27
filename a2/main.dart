import 'package:flutter/material.dart';

//flutter 3

void main() {
  runApp(MaterialApp(
    title:"Botão com Borda",
    home:Container(
      color:Color.fromARGB(255, 0, 0, 0),
      child:Column(
        children:<Widget>[
          ElevatedButton(
            child: Text('Pressione o botão'),
            style: ElevatedButton.styleFrom(
              //ignore:deprecated_member_use
              primary:Colors.green,
              side:BorderSide(
                color:Colors.white70, width: 2,
              ),
              textStyle: const TextStyle(
                color:Colors.white,
                fontSize: 25,
                fontStyle: FontStyle.normal,
              ),
              ),
              onPressed:(){
                print("Clicou no botão");
              },
            ),
        ],
      ),
    ),
));
}