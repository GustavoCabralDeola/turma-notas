abstract class Nota {
  double valor;
  String descricao;
  Nota(this.valor, this.descricao);

  double get peso;
  String get tipo;

  double get media {
  if (listaNotas.isEmpty) return 0.0;

  double soma = 0;

  for (var nota in listaNotas) {
    soma += nota.valor;
  }

  return soma / listaNotas.length;
}

double get mediaPonderada {
  if (listaNotas.isEmpty) return 0.0;

  double somaPesos = 0;
  double somaNotas = 0;

  for (var nota in listaNotas) {
    somaPesos += nota.peso;
    somaNotas += nota.valor * nota.peso;
  }

  return somaNotas / somaPesos;
}
}

class NotaProva extends Nota {
  @override
  double get peso => 1.0;
  @override
  String get tipo => "Prova";

  NotaProva(double valor, String descricao) : super(valor, descricao);
  
}

class NotaTrabalho extends Nota {
  @override
  double get peso => 0.5;
  @override
  String get tipo => "Trabalho";

  NotaTrabalho(double valor, String descricao) : super(valor, descricao); 


}







