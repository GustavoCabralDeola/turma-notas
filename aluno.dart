import 'nota.dart';

class Aluno {
  String nome;
  List<Nota> listaNotas = [];
  Aluno(this.nome);


Aluno alunoModel = Aluno("João");

alunoModel.listaNotas.add(Nota(9.5, "Prova de Matemática"));


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


void listarNotas() {
for (var nota in listaNotas) {
  print(
    "Nota: ${nota.valor}", 
    "Valor: ${nota.valor}", 
    "Peso: ${nota.peso}");
}

}

}



