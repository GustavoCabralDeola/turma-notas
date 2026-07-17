import 'dart:io';

import 'nota.dart';
import 'turma.dart';

class Aluno {
  String nome;
  List<Nota> listaNotas = [];
  Aluno(this.nome);


void exibirAsNotas() {
 listaNotas.forEach((nota) {
    nota.exibirNotas();
  });
}

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

Map<String, dynamic> toMap() => {
    'nome': nome,
    'notas': listaNotas.map((n) => n.toMap()).toList(),
  };
}



