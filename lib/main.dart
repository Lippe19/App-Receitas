import 'package:aula21/telas/telaAbas.dart';
import 'package:aula21/telas/telaCategorias.dart';
import 'package:aula21/telas/telaReceita.dart';
import 'package:flutter/material.dart';
import 'telas/telaPratos.dart';
import 'telas/telaFiltros.dart';
import 'dados.dart';
import 'models/receita.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String, bool> filtros = {
    'ehVegano': false,
    'ehVegetariano': false,
    'temGlutem': false,
    'temLactose': false
  };

  List<Receita> listadeReceitas = dadosReceitas;

  void setarFiltros(Map<String, bool> filtros){
    setState(() {
      this.filtros = filtros;
      this.listadeReceitas = dadosReceitas.where((element) {
          if(this.filtros['ehVegetariano'] && !element.ehVegetariano){
            return false;
          }else if(this.filtros['ehVegano'] && !element.ehVegano){
            return false;
          }else if(this.filtros['temGlutem'] && !element.temGlutem){
            return false;
          }else if(this.filtros['temLactose'] && !element.temLactose){
            return false;
          }else{
            return true;
          }
      }).toList();
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Template Food',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: telaCategorias(),
      routes: {
        '/': (ctx) => telaAbas(),
        '/tela-pratos': (ctx) => telaPratos(this.listadeReceitas),
        '/tela-receita': (ctx) => telaReceita(),
        '/filtros': (ctx) => telaFiltros(filtros, setarFiltros)
      }


    );
  }
}