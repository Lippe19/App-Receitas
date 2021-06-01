import 'package:flutter/material.dart';

class menuPrincipal extends StatelessWidget {

  Widget opcaoMenu(IconData icone, String texto, Function enviarPagina){
    return ListTile(
        leading: Icon(icone),
        title: Text(texto),
        onTap: enviarPagina
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(children: [
     Container(
       width: double.infinity,
       height: 80,
       alignment: Alignment.centerLeft,
       color: Colors.teal,
       child: Text('Menu', style: TextStyle(
         color: Colors.white,
         fontSize: 20
       )),),
      SizedBox(height: 20),
      opcaoMenu(Icons.restaurant_menu, "Cardapio", () {Navigator.of(context).pushReplacementNamed('/');}),
      opcaoMenu(Icons.settings, "Configurações",  () {Navigator.of(context).pushReplacementNamed('/filtros');})
    ])
    );
  }
}

