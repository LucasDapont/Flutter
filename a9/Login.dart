import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

TextEditingController _controllerUsuario = TextEditingController();
TextEditingController _controllerSenha = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela de Login"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: SingleChildScrollView(
          //Barra de rolagem
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagens/logo insta.jpg"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Digite seu e-mail e senha",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold),                 
                  ),
                 ),
                 TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: "Digite seu email"),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _controllerUsuario,
                 ),
                 TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Digite sua senha"),
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  controller: _controllerSenha,
                  obscureText: true,
                 ),
                 Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(    
                      //ignore:deprecated_member_use                  
                      primary: Color.fromARGB(255, 23, 105, 172 ),
                      //ignore:deprecated_member_use 
                      onPrimary: Colors.blueAccent,
                      padding: EdgeInsets.all(15),
                    ),
                    child: Text("Logar",
                    style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {}
                  ),
                  )
            ],
          ),
        ),
      ),
    );
  }
}