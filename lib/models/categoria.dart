import 'package:flutter/material.dart';

class Categoria {

   String id;
   String titulo;
   Color cor;
   String icone;
   String imgCapa;

  Categoria({
    this.id,
    this.titulo,
    this.cor = Colors.blue,
    this.icone,
    this.imgCapa
  });

}