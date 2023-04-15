void main() {
  
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  mostrarMdura(nome: "Laranja",dias: 40, cor: "laranja com amarelo");

}

void mostrarMdura({required String nome,required int dias, required String cor}) {
  
  if (dias >= 30) {
    print('A $nome está madura');
  }else{
    print('A $nome não está madura');
  }

  if (cor != null) {
    print("A $nome é $cor"); 
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
  
}
