import 'package:flutter/material.dart';
import '../widgets/itemCategoria.dart';
import '../dados.dart';

import 'package:aula21/widgets/item_list.dart';

class telaCategorias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text("Categorias"))
      body: GridView(
        padding: EdgeInsets.all(15),
        children:
        dadosCategoria.map(
                (cat) => itemCategoria(cat.id, cat.titulo, cat.cor, cat.icone, cat.imgCapa)
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
        ),

      ),



    );
  }
}
