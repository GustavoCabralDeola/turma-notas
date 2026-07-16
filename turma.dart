import 'dart:io';

import 'aluno.dart';
import 'nota.dart';

class Turma{
  final List<Aluno> _listaAlunos = [];



void cadastrarAluno()
{
  stdout.writeln("Digite o nome do aluno:");
  String nome = stdin.readLineSync()!;
  _listaAlunos.add(Aluno(nome));
}

//Lançar nota
void cadastrarNota(int i, Nota nota){
  _listaAlunos[i].listaNotas.add(nota);
}
int get totalAlunos => _listaAlunos.length;

void listarTodasAsNotas() {
  for (var i = 0; i < _listaAlunos.length; i++) {
    Aluno aluno = _listaAlunos[i];
    print("Notas do aluno ${aluno.nome}:");
    for (var nota in aluno.listaNotas) {
      print("Nota: ${nota.valor}, Descrição: ${nota.descricao}, Peso: ${nota.peso}");
    }
  }
}


void listarNotaEspecifica(int i){
  if(i < 0 || i >= _listaAlunos.length){
    print("Índice inválido!");
    return;
  }
  Aluno aluno = _listaAlunos[i];
  print("Notas do aluno ${aluno.nome}:");
  for (var nota in aluno.listaNotas) {
    print("Nota: ${nota.valor}, Descrição: ${nota.descricao}, Peso: ${nota.peso}");
  }
}

void listarAlunos() {
  if (_listaAlunos.isEmpty) {
    print("Nenhum aluno cadastrado.");
    return;
  }

  stdout.writeln("Deseja listar todos os alunos com notas? (Digite 'sim' ou 'não')");
  String opcao = stdin.readLineSync()!;

  if (opcao == 'sim'){
    print("Lista de alunos com notas:");
    for (var i = 0; i < _listaAlunos.length; i++) {
      Aluno aluno = _listaAlunos[i];
      print("Índice: $i, Nome: ${aluno.nome}");
      for (var nota in aluno.listaNotas) {
        print("Nota: ${nota.valor}, Descrição: ${nota.descricao}, Peso: ${nota.peso}");
      } //Fazer o listarNomesEMedias em aluno.dart
    }

  }
  print("Lista de alunos:");
  for (var i = 0; i < _listaAlunos.length; i++) {
    print("Índice: $i, Nome: ${_listaAlunos[i].nome}");
  }
  

}

