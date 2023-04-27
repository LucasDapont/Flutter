import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    title: "Aplicativo Pichaku",
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pikomom"),
      ),
      body: ListView(
        children:<Widget> [
          Image.asset('Imagens/pokeball.png',
          fit: BoxFit.fill,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Center(
            child: ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> DiaryPokemom()));
              } ,
              icon: Icon(Icons.arrow_right), 
              label: Text("Acessar Pikomex")
              ),
          )
        ],
      ),
    );
  }
}

class DiaryPokemom extends StatelessWidget {
  const DiaryPokemom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda Pikomom"),
      ),
      body: ListView(
        children:<Widget> [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Perfil"),
          ),
   ListTile(
            leading: Icon(Icons.settings),
            title: Text("Configurações"),
          ),
          ElevatedButton(
            onPressed: (){}, 
            child: Text("Pesquisar Pikomom"),
            ),
            Image.asset("Imagens/pokeball.png",
            fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(32)),
              Center(
                child: ElevatedButton.icon(
                  onPressed: (){
                  Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back), 
                  label: Text("Voltar")
                  ),
              )
        ],
      ),
    );
  }
}

class Pikomom extends StatelessWidget {
  const Pikomom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda Pikomom"),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text("Não temos uma versão flutter para pikomom"),
        ),
      )
    );
  }
}

class MyFavoritePikomom extends StatelessWidget {
  const MyFavoritePikomom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda Pikomom"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text("Pikachu",
            style: TextStyle(
              fontSize: 45),
            ),
          ),
          Image.asset("Imagens/pikachu.jpg",
          fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(100)),
            Center(
              child: ElevatedButton.icon(
                onPressed: (){}, 
                icon: Icon(Icons.arrow_back), 
                label: Text("Voltar"),
                ),
            ),
        ],
      ),
    );
    }
}