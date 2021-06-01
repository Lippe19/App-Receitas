import 'package:aula21/widgets/itemReceita.dart';
import 'package:flutter/material.dart';
import '../dados.dart';
import 'package:aula21/models/receita.dart';

class telaPratos extends StatefulWidget {

  List<Receita> dadosReceitas;
  telaPratos(this.dadosReceitas);

  @override
  _telaPratosState createState() => _telaPratosState();
}

class _telaPratosState extends State<telaPratos> {

  String tituloCategoria;
  List categorias;


  @override
  void didChangeDependencies(){
    final rotaArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    String idCategoria = rotaArgs['id'];
    this.tituloCategoria = rotaArgs['titulo'];
    this.categorias = widget.dadosReceitas.where((receita) {
      return receita.categorias.contains(idCategoria);
    }).toList();
    super.didChangeDependencies();
  }

  void removerReceita(String idReceita){
    setState(() {
      this.categorias.removeWhere((element) => element.id == idReceita);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("$tituloCategoria")),
      body: Container(
          child: ListView.builder(itemBuilder: (ctx, item) {
              return itemReceita(
                  categorias[item].id,
                  categorias[item].titulo,
                  categorias[item].urlImagem,
                  categorias[item].complexidade,
                  categorias[item].tempoPreparo,
                  categorias[item].preco,
                  removerReceita);
          }, itemCount: categorias.length,)
      ),
    );
  }
}
