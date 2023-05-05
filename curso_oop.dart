void main() {
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 20;
  bool isMadura;

  // mostrarMdura(nome: "Laranja", dias: 40, cor: "laranja com amarelo");

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta("Uva", 40, "Roxa", "Doce", 20);

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marrom', true);
  Fruta banana1 = Fruta('Banana', 75, 'Amerelo', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  macadamia1.printALimento();
  banana1.printALimento();
  limao1.printALimento();
  banana1.fazerSuco();
  mandioca1.printALimento();
  mandioca1.cozinhar();
  print(' ');
  banana1.separarIngredientes();
  banana1.fazerMassa();
  print(' ');
  mandioca1.fazerMassa();
}

// print(fruta01.nome);
// print(fruta01);

// print(fruta02.nome);
// print(fruta02);

// fruta01.estaMadura(30);
// fruta02.estaMadura(60);

class Alimento {
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printALimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor');
  }
}

class Legumes extends Alimento implements Bolo {
  bool isprecisaCozinhar;
  Legumes(String nome, double peso, String cor, this.isprecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isprecisaCozinhar) {
      print('Pronto, $nome está cozinhando!');
    } else {
      print('Nem precisa cozinhar!');
    }
  }

  @override
  void assar() {}
  @override
  void fazerMassa() {}
  @override
  void separarIngredientes() {}
}

class Fruta extends Alimento implements Bolo {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print(
        "A sua $Fruta foi colhida a $diasDesdeColheita dias, e precisa de $isMadura para poder comer. ela está madura? ");
  }

  void fazerSuco() {
    print('Você fez um ótimo suco de $nome!');
  }

  @override
  void separarIngredientes() {
    print('Catar a $nome');
  }

  @override
  void fazerMassa() {
    print('Misturar a $nome com Farinha, açucar ovos....');
  }

  @override
  void assar() {
    print('Colocar no Forno');
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta {
  double procentagemOleoNatural;
  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.procentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa() {
    print('Tirar a casa');
    super.fazerMassa();
  }
  // @override
  // void
}

abstract class Bolo {
  void separarIngredientes();
  void fazerMassa();
  void assar();
}

void mostrarMdura(
    {required String nome, required int dias, required String cor}) {
  if (dias >= 30) {
    print('A $nome está madura');
  } else {
    print('A $nome não está madura');
  }

  if (cor != null) {
    print("A $nome é $cor");
  }

  bool funcEstaMadura(int dias) {
    if (dias >= 30) {
      return true;
    } else {
      return false;
    }
  }
}
