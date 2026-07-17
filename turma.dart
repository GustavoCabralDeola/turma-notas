import 'dart:convert';
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
  print("Aluno cadastrado com sucesso!");
}

//Lançar nota (que está no menu.dart)
void cadastrarNota(Aluno alunoModel, Nota notaModel){


  alunoModel.listaNotas.add(notaModel);
}
int get totalAlunos => _listaAlunos.length;

void listarTodasAsNotas() {
  for (var i = 0; i < _listaAlunos.length; i++) {
    Aluno aluno = _listaAlunos[i];
    stdout.writeln("Notas do aluno ${aluno.nome}:");
    for (var nota in aluno.listaNotas) {
      print("Nota: ${nota.valor}, Descrição: ${nota.descricao}, Peso: ${nota.peso}");
    }
      print("------------------------------------");
  }
}


void listarNotaEspecifica(String nome) {
  int i = _listaAlunos.indexWhere((aluno) => aluno.nome == nome);
  if (i < 0 || i >= _listaAlunos.length) {
    print("Aluno não encontrado!");
    return;
  }
  Aluno aluno = _listaAlunos[i];
  print("Notas do aluno ${aluno.nome}:");
  for (var nota in aluno.listaNotas) {
    print("Nota: ${nota.valor}, Descrição: ${nota.descricao}, Peso: ${nota.peso}");
  }
}

void listarOsAlunos() {
  if (_listaAlunos.isEmpty) {
    print("Nenhum aluno cadastrado.");
    return;
  }

  stdout.writeln("Deseja listar todos os alunos com notas? (Digite 'sim' ou 'não')");
  String opcao = stdin.readLineSync()!;

  if (opcao == 'sim'){
    print("Lista de alunos com notas:");
    for (var i = 0; i < _listaAlunos.length; i++) {
      Aluno alunoModel = _listaAlunos[i];
      print("ID: $i, Nome: ${alunoModel.nome}");

      alunoModel.exibirAsNotas();
    }

  }
  print("Lista de alunos:");
  for (var i = 0; i < _listaAlunos.length; i++) {
    print("ID: $i, Nome: ${_listaAlunos[i].nome}");
  }
}


//Auxiliares:

Aluno? buscarAlunoPorNome(String nome) {
  int i = _listaAlunos.indexWhere(
    (aluno) => aluno.nome.toLowerCase().contains(nome.toLowerCase()),
  );

  if (i == -1) {
    return null;
  }

  return _listaAlunos[i];
}

String exportarJson() {
    return jsonEncode(_listaAlunos.map((a) => a.toMap()).toList());
  }


}

