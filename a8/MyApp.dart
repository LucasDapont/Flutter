import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

Color bulbColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo troca de cor"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Icon(
              Icons.elderly_rounded,
              size: 100,
              color: bulbColor,
            ),
            Container(
              width:150,
              child: Row(
                children:<Widget> [
                  Radio(
                    value: Colors.red,
                    groupValue: bulbColor,
                    onChanged: (val){
                      bulbColor =Colors.red;
                      setState(() {
                        print(val);
                      });
                    }),
                    Text("Red",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    )                   
                ],
              ),
            ),
            Container(
              width:150,
              child: Row(
                children:<Widget> [
                  Radio(
                    value: Colors.orange,
                    groupValue: bulbColor,
                    onChanged: (val){
                      bulbColor =Colors.orange;
                      setState(() {
                        print(val);
                      });
                    }),
                    Text("Orange",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    )                   
                ],
              ),
            ),
            Container(
              width:150,
              child: Row(
                children:<Widget> [
                  Radio(
                    value: Colors.green,
                    groupValue: bulbColor,
                    onChanged: (val){
                      bulbColor =Colors.green;
                      setState(() {
                        print(val);
                      });
                    }),
                    Text("Green",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    )                   
                ],
              ),
            ),
            Container(
              width:150,
              child: Row(
                children:<Widget> [
                  Radio(
                    value: Colors.blue,
                    groupValue: bulbColor,
                    onChanged: (val){
                      bulbColor =Colors.blue;
                      setState(() {
                        print(val);
                      });
                    }),
                    Text("Blue",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    )                   
                ],
              ),
            ),
            Container(
              width:150,
              child: Row(
                children:<Widget> [
                  Radio(
                    value: Colors.pink,
                    groupValue: bulbColor,
                    onChanged: (val){
                      bulbColor =Colors.pink;
                      setState(() {
                        print(val);
                      });
                    }),
                    Text("Pink",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    )                   
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
