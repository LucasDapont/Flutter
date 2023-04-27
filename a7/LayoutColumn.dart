import 'dart:html';

//flutter 9

import 'package:flutter/material.dart';

class LayoutColumn extends StatefulWidget {
  const LayoutColumn({super.key});

  @override
  State<LayoutColumn> createState() => _LayoutColumnState();
}

class _LayoutColumnState extends State<LayoutColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page em Coluna"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset("Imagens/COS.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Text("Delete",
                          style: TextStyle(
                            fontSize: 10,
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset("Imagens/curse-of-strahd.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Text("Delete",
                          style: TextStyle(
                            fontSize: 10,
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset("Imagens/astronauta.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Text("Delete",
                          style: TextStyle(
                            fontSize: 10,
                          )),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Image.asset("Imagens/ravenloft.jpg"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(15),
                      ),
                      child: Text("Delete",
                          style: TextStyle(
                            fontSize: 10,
                          )),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          }))
        ],
      ),
    );
  }
}