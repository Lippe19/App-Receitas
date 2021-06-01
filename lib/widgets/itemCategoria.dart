import 'file:///C:/Users/Usuario/AndroidStudioProjects/aula21/lib/telas/telaPratos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:aula21/widgets/item_list.dart';

class itemCategoria extends StatelessWidget {
  String id;
  String titulo;
  Color cor;
  String icone;
  String imgCapa;

  itemCategoria(this.id, this.titulo, this.cor, this.icone, this.imgCapa);

  void selecionarCategoria(BuildContext ctx){
    Navigator.of(ctx).pushNamed(
      '/tela-pratos',
      arguments: {
        'id': this.id,
        'titulo': this.titulo
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return InkWell(
      onTap: () => selecionarCategoria(context),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 120,//_screenSize.height * 0.17,
            //margin: const EdgeInsets.only(bottom: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imgCapa),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [cor.withOpacity(0.3), cor.withOpacity(0.8)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                ),),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: SvgPicture.asset(icone, height: 50, color: Colors.white,),
                    ),/**/
                    Container(
                      //padding: const EdgeInsets.only(bottom: 10.0),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "${titulo} \n",
                              style: TextStyle(fontFamily: 'Breesh', fontSize: 26,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ),
          //ItemList(),
        ],
      ),


    );


  }
}
