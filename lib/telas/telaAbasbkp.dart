import 'package:aula21/telas/telaCategorias.dart';
import 'package:aula21/telas/telaFavoritos.dart';
import 'package:flutter/material.dart';

class telaAbas extends StatefulWidget {
  @override
  _telaAbasState createState() => _telaAbasState();
}

class _telaAbasState extends State<telaAbas> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
        appBar: AppBar(title: Text(""), bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.category), text: "Categorias"),
            Tab(icon: Icon(Icons.favorite), text: "Favoritos")
          ],
        )),
      body: TabBarView(children: [
          telaCategorias(), telaFavoritos()
      ],),
    ));
  }
}
