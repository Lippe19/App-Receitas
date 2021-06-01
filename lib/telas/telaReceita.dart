import 'package:aula21/widgets/itemReceita.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aula21/dados.dart';
import 'package:aula21/models/receita.dart';

import 'package:aula21/screens/details/components/title_price_rating.dart';
import 'package:aula21/screens/details/components/order_button.dart';
import 'package:aula21/screens/details/components/item_image.dart';

class telaReceita extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context).settings.arguments as String;
    var receita = dadosReceitas.firstWhere((rec) => rec.id == id);

    return Material(
      color: Colors.white,
      child: ListView(
        children: <Widget>[
          ItemImage(
            imgSrc: "${receita.urlImagem}",
          ),
          Expanded(
            child: infoTop(),
          ),
          Expanded(
            child: ItemInfo(),
          ),
        ],
      ),
    );
  }
  /**/
}














class infoTop extends StatelessWidget {
  Complexidade complexidade;

  String get textoComplexidade {
    switch (this.complexidade) {
      case Complexidade.Facil:
        return 'Fácil';
        break;
      case Complexidade.Medio:
        return 'Médio';
        break;
      case Complexidade.Dificil:
        return 'Difícil';
        break;
      default:
        return 'Problema';
    }
  }

  //infoTop(this.complexidade);

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context).settings.arguments as String;
    var receita = dadosReceitas.firstWhere((rec) => rec.id == id);

    return Container(
      padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
      width: double.infinity,
      transform: Matrix4.translationValues(0.0, -25.0, 25.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      /**/
      child: Column(
        children: <Widget>[
          //shopeName(),
          shopeName(name: "${this.complexidade}"),
        ],
      ),
    );
  }

  //Row shopeName() {
  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.handyman,
          color: Color(0xFFB5BFD0),
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(color: Color(0xFFB5BFD0), fontSize: 12),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
/*
  const ItemInfo({
    Key key,
  }) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    String id = ModalRoute.of(context).settings.arguments as String;
    var receita = dadosReceitas.firstWhere((rec) => rec.id == id);

    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          TitlePriceRating(
            name: "${receita.titulo}",
            numOfReviews: receita.numOfReviews,
            rating: receita.rating,
            price: receita.tempoPreparo,
            onRatingChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.03),

          //Ingredientes
          Container(
            width: double.infinity,
            child: Text(
              "Ingredientes",
              style: TextStyle(
                  fontFamily: 'Breesh',
                  fontSize: 22,
                  height: 1.5,
                  color: Color(0xFF50505D)),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  receita.ingredientes[index],
                  style: TextStyle(
                      fontFamily: 'segoeui',
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFFB5BFD0)),
                );
              },
              itemCount: receita.ingredientes.length,
            ),
          ),
          SizedBox(height: size.height * 0.03),

          //Passos
          Container(
            width: double.infinity,
            child: Text(
              "Passos",
              style: TextStyle(
                  fontFamily: 'Breesh',
                  fontSize: 22,
                  height: 1.5,
                  color: Color(0xFF50505D)),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            height: 100,
            padding: const EdgeInsets.only(bottom: 10.0),
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  receita.passos[index],
                  style: TextStyle(
                      fontFamily: 'segoeui',
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFFB5BFD0)),
                );
              },
              itemCount: receita.passos.length,
            ),
          ),
          /**/
          SizedBox(height: size.height * 0.03),
          OrderButton(size: size, press: () {Navigator.of(context).pop(id);}, ),/**/
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.handyman,
          color: Color(0xFFB5BFD0),
        ),
        SizedBox(width: 10),
        Text(
          name,
          style: TextStyle(
              fontFamily: 'segoeui', color: Color(0xFFB5BFD0), fontSize: 12),
        ),
      ],
    );
  }
}

