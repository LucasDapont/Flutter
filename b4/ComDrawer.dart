import 'package:flutter/material.dart';

class ComDrower extends StatefulWidget {
  const ComDrower({super.key});

  @override
  State<ComDrower> createState() => _ComDrowerState();
}

class _ComDrowerState extends State<ComDrower> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.art_track)),
                Tab(icon:Icon(Icons.portrait)),
                Tab(icon:Icon(Icons.landscape)),
                Tab(icon:Icon(Icons.palette)), 
              ]),
              title: Text("Arte do mundo"),
              backgroundColor: Colors.indigo,
          ),
          body: Container(
            child: TabBarView(
              children:<Widget> [
                Image.asset("imagens/sissi.jpg"),
                Image.asset("imagens/monalisa.jpg"),
                Image.asset("imagens/obeijo.jpg"),
                Image.asset("imagens/picasso.jpg"),
              ],
            ),
          ),

          ),
      ),
    );
  }
}
