import 'package:flutter/material.dart';
import './models/categoria.dart';
import './models/receita.dart';

var dadosCategoria = [
  Categoria(
    id: 'lan',
    titulo: 'Lanches',
    cor: Colors.purple,
    icone: "assets/icons/categoria/hamburguer.svg",
    imgCapa: "https://exame.com/wp-content/uploads/2020/05/mafe-studio-LV2p9Utbkbw-unsplash-1.jpg",
  ),
  Categoria(
    id: 'jap',
    titulo: 'Japonesa',
    cor: Colors.red,
    icone: "assets/icons/categoria/japonesa.svg",
    imgCapa: "https://blog.duogourmet.com.br/wp-content/uploads/2019/07/Duo-Gourmet-sushi-4-1200x675.jpg",
  ),
  Categoria(
    id: 'sob',
    titulo: 'Sobremesas',
    cor: Colors.orange,
    icone: "assets/icons/categoria/sobremesa.svg",
    imgCapa: "https://catracalivre.com.br/wp-content/uploads/2020/08/sobremesa-3-ingredientes-morango-preguicosa-ct.jpg",
  ),
  Categoria(
    id: 'beb',
    titulo: 'Bebidas',
    cor: Colors.amber,
    icone: "assets/icons/categoria/suco.svg",
    imgCapa: "https://www.receiteria.com.br/wp-content/uploads/receitas-de-suco-de-laranja.jpg",
  )
];

var dadosReceitas = [
  Receita(
      id: 'm1',
      categorias: [
        'lan',
        'sob',
      ],
      titulo: 'Misto quente',
      urlImagem:
          'https://img.itdg.com.br/tdg/images/recipes/000/138/603/71335/71335_original.jpg?mode=crop&width=710&height=400',
      ingredientes: [
        'Margarina para untar',
        '12 fatias de mussarela (ou a gosto)',
        '1 tomate grande cortado em rodelas'
      ],
      passos: [
        'Unte um refratário com margarina.',
        'Leve o refratário ao forno até a mussarela derreter (fiz no micro-ondas)'
      ],
      tempoPreparo: 20,
      complexidade: Complexidade.Facil,
      preco: Preco.caro,

      temGlutem: false,//B
      temLactose: false,//J
      ehVegano: true,//C
      ehVegetariano: true,//F

      numOfReviews: 40,
      rating: 4.0,
      favorito: true),

  Receita(
      id: 'm2',
      categorias: [
        'lan',
      ],
      titulo: 'Misto quente de forno à minha moda 1',
      urlImagem:
          'https://img.itdg.com.br/tdg/images/recipes/000/001/362/2676/2676_original.jpg?mode=crop&width=710&height=400',
      ingredientes: [
        'Margarina para untar',
        '12 fatias de mussarela (ou a gosto)',
        '1 tomate grande cortado em rodelas'
      ],
      passos: [
        'Unte um refratário com margarina.',
        'Leve o refratário ao forno até a mussarela derreter (fiz no micro-ondas)'
      ],
      tempoPreparo: 30,
      complexidade: Complexidade.Dificil,
      preco: Preco.barato,

      temGlutem: true,//B
      temLactose: false,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 10,
      rating: 1.5,
      favorito: true),


  Receita(
      id: 'm3',
      categorias: [
        'jap',
      ],
      titulo: 'YAKISSOBA',
      urlImagem:
      'https://img.itdg.com.br/tdg/images/recipes/000/002/085/38909/38909_original.jpg?mode=crop&width=710&height=400',
      ingredientes: [
        '300 g de espaguete',
        '1 cebola grande cortada em pedaços médios',
        '1 colher (sopa) de óleo',
        '1/2 maço pequeno de brócolis',
        '1/2 maço pequeno de couve-flor',
        '10 colheres (sopa) de molho shoyu',
        '400 g de carne cortada em tiras',
        '100 g de champignon',
        '1 cenoura cortada em rodelas',
        '250 ml de água',
        '1 colher (sopa) de amido de milho, dissolvido em 50 ml de água',
        'acelga a gosto'
      ],
      passos: [
        'Cozinhe o macarrão em ponto al dente e reserve.',
        'Em uma panela, adicione o azeite, a cebola, a carne e refogue bem.',
        'Adicione o molho shoyu e cozinhe por 3 minutos em fogo médio.',
        'Acrescente mais água, aguarde levantar fervura e adicione o amido de milho.',
        'Mexa até engrossar, abaixe o fogo e adicione o champignon, a couve-flor, o brócolis e a cenoura.',
        'Cozinhe por 8 minutos e acrescente, por último, a acelga e o macarrão.',
        'Misture bem, acerte o sal e tampe a panela por mais 1 minuto.'
      ],
      tempoPreparo: 40,
      complexidade: Complexidade.Dificil,
      preco: Preco.barato,

      temGlutem: true,//B
      temLactose: false,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 80,
      rating: 5,
    favorito: true
  ),









  Receita(
      id: 'm4',
      categorias: [
        'beb',
      ],
      titulo: 'Vitamina de Banana',
      urlImagem:
          'https://guiadossolteiros.com/wp-content/uploads/2014/03/vitamina-de-banana.jpg',
      ingredientes: [
        '4 ou 5 bananas pratas',
        '1 litro de leite',
        'açúcar a gosto',
        'gelo a gosto'
      ],
      passos: [
        'Coloque todos os ingredientes dentro do liquidificador e bata por cerca de 2 minutos.'
      ],
      tempoPreparo: 3,
      complexidade: Complexidade.Facil,
      preco: Preco.barato,

      temGlutem: true,//B
      temLactose: false,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 10,
      rating: 1.5,
      favorito: true,
      rendimento: 5
  ),
  Receita(
      id: 'm5',
      categorias: [
        'beb',
      ],
      titulo: 'Licor Caseiro',
      urlImagem:
      'https://espressoreceitas.com.br/wp-content/uploads/2021/01/receita-licor-amarula.jpg',
      ingredientes: [
        '1 lata de leite condensado',
        '2 caixas de creme de leite (não pode ser lata por causa do soro)',
        '1 medida (lata de leite condensado) de conhaque',
        '3 colheres cheias (sopa) de chocolate em pó'
      ],
      passos: [
        'Adicionar tudo no liquidificador e bater à vontade.'
       ],
      tempoPreparo: 3,
      complexidade: Complexidade.Facil,
      preco: Preco.justo,

      temGlutem: false,//B
      temLactose: true,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 10,
      rating: 1.5,
      favorito: true,
      rendimento: 12
  ),
  Receita(
      id: 'm6',
      categorias: [
        'beb',
      ],
      titulo: 'Mojito Tradicional Cubano',
      urlImagem:
      'https://img.imirante.com.br/2018/02/13/1518538184-327357889-810x471.jpg',
      ingredientes: [
        '1 lata de leite condensado',
        '2 caixas de creme de leite (não pode ser lata por causa do soro)',
        '1 medida (lata de leite condensado) de conhaque',
        '3 colheres cheias (sopa) de chocolate em pó'
      ],
      passos: [
        'Adicionar tudo no liquidificador e bater à vontade.'
      ],
      tempoPreparo: 15,
      complexidade: Complexidade.Medio,
      preco: Preco.justo,

      temGlutem: false,//B
      temLactose: true,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 10,
      rating: 1.5,
      favorito: true,
      rendimento: 5
  ),
  Receita(
      id: 'm7',
      categorias: [
        'beb',
      ],
      titulo: 'Quentão de Vinho',
      urlImagem:
      'https://cdn.panelinha.com.br/receita/960519600000-Quentao.jpg',
      ingredientes: [
        '1 lata de leite condensado',
        '2 caixas de creme de leite (não pode ser lata por causa do soro)',
        '1 medida (lata de leite condensado) de conhaque',
        '3 colheres cheias (sopa) de chocolate em pó'
      ],
      passos: [
  'Misture todos os ingredientes ao fogo em uma panela.',
      'Depois que levantar fervura, deixe por mais 10 minutos.',
  'Está pronto é só servir.',
      'Tomar a bebida quente.'
      ],
      tempoPreparo: 20,
      complexidade: Complexidade.Medio,
      preco: Preco.justo,

      temGlutem: false,//B
      temLactose: true,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 10,
      rating: 5,
      favorito: true,
      rendimento: 12
  ),









  Receita(
      id: 'm8',
      categorias: [
        'sob',
      ],
      titulo: 'Mousse de Limão',
      urlImagem:
      'https://www.anamariabrogui.com.br/assets/uploads/receitas/fotos/usuario-2256-a50ed558b2d695e515c009348341a344.jpg',
      ingredientes: [
        '1 lata de leite condensado',
        '1 lata de creme de leite',
        '1/2 xícara de suco de limão (esse suco é puro mesmo, sem água, é só espremer o limão)'
      ],
      passos: [
        'Coloque no liquidificador o creme de leite (com soro mesmo) e o leite condensado.',
        'Bata um pouco e depois vá acrescentando o suco do limão, aos poucos.',
        'Ele vai ficar bem consistente, leve à geladeira.'
      ],
      tempoPreparo: 10,
      complexidade: Complexidade.Medio,
      preco: Preco.justo,

      temGlutem: false,//B
      temLactose: true,//J
      ehVegano: false,//C
      ehVegetariano: false,//F

      numOfReviews: 10,
      rating: 5,
      favorito: true,
      rendimento: 10
  ),

];
