import 'package:aula21/widgets/menuPrincipal.dart';
import 'package:flutter/material.dart';

class telaFiltros extends StatefulWidget {
  Function setarFiltros;
  Map<String, bool> filtros;

  telaFiltros(this.filtros, this.setarFiltros);

  @override
  _telaFiltrosState createState() => _telaFiltrosState();
}

class _telaFiltrosState extends State<telaFiltros> {

  bool ehVegano = false;
  bool ehVegetariano = false;
  bool temGlutem = false;
  bool temLactose = false;

  @override
  void initState() {
    // TODO: implement initState
    ehVegano = widget.filtros['ehVegano'];
    ehVegetariano = widget.filtros['ehVegetariano'];
    temGlutem = widget.filtros['temGlutem'];
    temLactose = widget.filtros['temLactose'];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text("Filtros"),
          actions: [
            IconButton(icon: Icon(Icons.save), onPressed: () {
              Map<String, bool> filtros = {
                'ehVegano': this.ehVegano,
                'ehVegetariano': this.ehVegetariano,
                'temGlutem': this.temGlutem,
                'temLactose': this.temLactose
              };
              widget.setarFiltros(filtros);
            })
          ],
        ),

        drawer: menuPrincipal(),
        body: Column(children: [
          Container(child: Text("Selecione os filtros")),
          Expanded(child:
            ListView(children: [

              SwitchListTile(
                title: Text("Barato"),
                value: this.temGlutem,
                //subtitle: Text("Adiciona ou remove receitas que contém glutem"),
                onChanged: (newVal) {
                  setState(() {
                    this.temGlutem = newVal;
                  });
                },
              ),
              SwitchListTile(
                title: Text("Justo"),
                value: this.temLactose,
                //subtitle: Text("Adiciona ou remove receitas que contém lactose"),
                onChanged: (newVal) {
                  setState(() {
                    this.temLactose = newVal;
                  });
                },
              ),
              SwitchListTile(
                title: Text("Caro"),
                value: this.ehVegano,
                //subtitle: Text("Adiciona ou remove receitas veganas"),
                onChanged: (newVal) {
                  setState(() {
                    this.ehVegano = newVal;
                  });
                },
              ),

              /*SwitchListTile(
                title: Text("Vegetariano"),
                value: this.ehVegetariano,
                subtitle: Text("Adiciona ou remove receitas vegetarianas"),
                onChanged: (newVal) {
                  setState(() {
                    this.ehVegetariano = newVal;
                  });
                },
              ),*/

            ],)
          )
        ])
    );
  }
}
