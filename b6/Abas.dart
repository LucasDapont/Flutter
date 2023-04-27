import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_17/CadastroProduto.dart';
import 'package:flutter_application_17/cadastroCliente.dart';
import 'package:flutter_application_17/CadastroFornecedor.dart';
import 'package:flutter_application_17/cadastroFornecedor.dart';

class Abas extends StatefulWidget {
  const Abas({super.key});

  @override
  State<Abas> createState() => _AbasState();
}

class _AbasState extends State<Abas>with SingleTickerProviderStateMixin {

late TabController _TabController;

@override
void initState() {
    // TODO: implement initState
    _TabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APP Flutter ABAS'),
        bottom: TabBar(
          controller: _TabController,
          tabs:<Widget> [
            Tab(
              text:"Cadastro cliente",
              icon: Icon(Icons.account_tree_rounded),
            ),
            Tab(
              text:"Cadastro produto",
              icon: Icon(Icons.print),
            ),
            Tab(
              text:"Cadastro fornecedor",
              icon: Icon(Icons.ac_unit_sharp),
            ),
          ],
        ),
      ),
      body:  TabBarView(
        controller: _TabController,
        children: [
          cadastroCliente(),
          CadastroProduto(),
          CadastroFornecedor(),
        ],
      ),
    );
  }
}