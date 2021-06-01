import 'package:aula21/telas/telaCategorias.dart';
import 'package:aula21/telas/telaFavoritos.dart';
import 'package:aula21/widgets/menuPrincipal.dart';
import 'package:flutter/material.dart';

class telaAbas extends StatefulWidget {
  @override
  _telaAbasState createState() => _telaAbasState();
}

class _telaAbasState extends State<telaAbas> {

  List<Widget> paginas = [
    telaCategorias(), telaFavoritos()
  ];
  int paginaSelecionada = 0;

  void selecionarPagina(int index){
    setState(() {
      paginaSelecionada = index;
      print(paginaSelecionada);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title: Text("Aplicativo Receitas!")),
        drawer: menuPrincipal(),
        body: paginas[paginaSelecionada],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: paginaSelecionada,
          onTap: selecionarPagina,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Categories'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos')
          ],
        ),
    );
  }
}
