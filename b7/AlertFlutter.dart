import 'dart:html';

import 'package:flutter/material.dart';
class AlertFlutter extends StatefulWidget {
  const AlertFlutter({super.key});

  @override
  State<AlertFlutter> createState() => _AlertFlutterState();
}

class _AlertFlutterState extends State<AlertFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog com Flutter'),
      ),
          body: Container(
            child: Center(
              child: ElevatedButton(
                child: Text("Clique Aqui"),
                onPressed: (){
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context)=>AlertDialog(
                      content: Text("Mensagem de Alerta"),
                      actions: [
                        TextButton(
                          onPressed: (){
                            Navigator.of(context).pop("ok");
                          },
                          child: Text("ok")),

                          TextButton(
                          onPressed: (){
                            Navigator.of(context).pop("cancelar");
                          },
                          child: Text("cancelar")),
                      ],
                    )
                  ).then((value) =>{
                    print("Resultado" + value.toString()),
                  });
                },
              ),
            ),
          ),
    );
  }
}