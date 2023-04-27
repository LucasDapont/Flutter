import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Aplicativo entre abas",
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
        title: Text("Pokemon"),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            "imagens/pokemon_banner.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "imagens/pokemon_logo.png",
            fit: BoxFit.fill,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Center(
              child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => 
            },
            icon: Icon(Icons.arrow_right),
            label: Text("Acessar Pokedex"),
          ))
        ],
      ),
    );
  }
}

class DiaryPokemon extends StatelessWidget {
  const DiaryPokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AgendaPokemon"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Perfil"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Pesquisar Pokemon"),
            ),
            Image.asset(
              "imagens/pokemon_banner.jpg",
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.all(32)),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
                label: Text("Voltar"),
              ),
            )
          ],
        ));
  }
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda Pokemon"),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text("não temos versão de flutter para Pokedex"),
        ),
      ),
    );
  }
}

class MyFavoritePokemon extends StatelessWidget {
  const MyFavoritePokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agenda Pokemon"),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Pikachu",
              style: TextStyle(fontSize: 45),
            ),
          ),
          Image.asset(
            "imagens/pikachu.jpg",
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(100)),
          Center(
              child: ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            label: Text("Voltar"),
          ))
        ],
      ),
    );
  }
}