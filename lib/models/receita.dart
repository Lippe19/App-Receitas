enum Complexidade{
  Facil,
  Medio,
  Dificil
}

enum Preco {
  barato,
  justo,
  caro
}

class Receita {
  String id;
  List<String> categorias;
  String titulo;
  String urlImagem;
  List<String> ingredientes;
  List<String> passos;
  int tempoPreparo;
  Complexidade complexidade;
  Preco preco;

  bool temGlutem;//B
  bool temLactose;//J
  bool ehVegano;//C
  bool ehVegetariano;//F

  int numOfReviews;
  double rating;

  bool favorito;
  int rendimento;

  Receita({
   this.id,
   this.categorias,
   this.titulo,
   this.urlImagem,
   this.ingredientes,
   this.passos,
   this.tempoPreparo,
   this.complexidade,
   this.preco,

   this.ehVegano,//
    this.ehVegetariano,//
    this.temGlutem,//
    this.temLactose,//

    this.numOfReviews,
    this.rating,
    this.favorito,
    this.rendimento
   });

}