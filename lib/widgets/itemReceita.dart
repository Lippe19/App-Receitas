import 'package:aula21/models/receita.dart';
import 'package:flutter/material.dart';

class itemReceita extends StatelessWidget {

  void selecionarReceita(context){
    Navigator.of(context).pushNamed('/tela-receita', 
        arguments: id).then((value) {
          if(value != null){
            this.removerItem(value);
          }
    });
  }

  String id;
  String titulo;
  String imagem;
  Complexidade complexidade;
  int tempo;
  Preco preco;
  Function removerItem;

  String get textoComplexidade{
    switch(this.complexidade) {
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

  String get textoPreco{
    switch(this.preco) {
      case Preco.barato:
        return 'Barato';
        break;
      case Preco.justo:
        return 'Justo';
        break;
      case Preco.caro:
        return 'Caro';
        break;
      default:
        return 'Problema';
    }
  }

  itemReceita(this.id, this.titulo, this.imagem, this.complexidade, this.tempo, this.preco, this.removerItem);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecionarReceita(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        margin: EdgeInsets.all(10),
        elevation: 4,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                  ),
                  child: Image.network(this.imagem, height: 200, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black38,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10
                    ),
                    child: Text(this.titulo,
                      style: TextStyle(
                          fontFamily: 'Breesh',
                          fontSize: 26,
                          height: 1.5, color: Colors.white),
                    softWrap: true,
                    overflow: TextOverflow.fade,),
                  ),
                ),
              ],
            ),
            Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_alarm),
                        Text(this.tempo.toString())
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.handyman),
                        Text(this.textoComplexidade)
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.monetization_on_outlined),
                        Text(this.textoPreco)
                      ],
                    )
                  ],
                )
            )
          ],
        ),
      )
    );
  }
}



