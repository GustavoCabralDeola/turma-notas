import 'dart:io';
import 'aluno.dart';
import 'nota.dart';
import 'turma.dart';

void menu(){

  print("============================================================================");
  print("------------>Bem vindo ao sistema de gerenciamento de turmas!<------------");
  print("============================================================================");

  stdout.writeln("Escolha uma opção:");
  stdout.writeln("1 - Cadastrar aluno, 2 - Lançar nota, 3 - Listar notas, 4 - Calcular média, 5 - Calcular média ponderada, 6 - Sair");
  String opcao = stdin.readLineSync()!;

  switch(opcao){
    case "1":
    case "Cadastrar aluno":
    Turma turma = Turma();
      turma.cadastrarAluno();
      break;
    case "2":
    case "Lançar nota":
      lancarNota();
      break;
    case "3":
    case "Listar notas":
      listarNotas();
      break;
    case "4":
    case "Calcular média":
      calcularMedia();
      break;
    case "5":
    case "Calcular média ponderada":
      calcularMediaPonderada();
      break;
    case "6":
    case "Sair":
      print("Saindo do sistema...");
      exit(0);
    default:
      print("Opção inválida!");
  }

}

void lancarNota() {

  stdout.writeln("Deseja lançar uma nota de prova ou de trabalho? (Digite 'prova' ou 'trabalho')");
  String opcao = stdin.readLineSync()!;

  Turma turmaModel = Turma();

 
  stdout.writeln("Digite o índice(ID) do aluno:");
  int indiceAluno = int.parse(stdin.readLineSync()!);

  stdout.writeln("Digite o valor da nota:");
  double valorNota = double.parse(stdin.readLineSync()!);

  stdout.writeln("Digite a descrição da nota:");
  String descricaoNota = stdin.readLineSync()!;

  if (opcao.toLowerCase() == "trabalho") {
    NotaTrabalho notaTrabalhoModel = NotaTrabalho(valorNota, descricaoNota);
    turmaModel.cadastrarNota(indiceAluno, notaTrabalhoModel);
  } else if (opcao.toLowerCase() == "prova") {
    NotaProva notaProvaModel = NotaProva(valorNota, descricaoNota);
    turmaModel.cadastrarNota(indiceAluno, notaProvaModel);
  } else {
    print("Opção inválida!");
  }
}


void listarNotas() {
  Turma turmaModel = Turma();

  stdout.writeln("Deseja listar as notas de todos os alunos? Digite 'sim' ou 'não'");
  String opcao = stdin.readLineSync()!;

  if (opcao.toLowerCase() == "sim") {
    turmaModel.listarTodasAsNotas();
  } else if (opcao.toLowerCase() == "não") {
    stdout.writeln("Digite o índice(ID) do aluno:");
    int indiceAluno = int.parse(stdin.readLineSync()!);
    turmaModel.listarNotaEspecifica(indiceAluno);
  } else {
    print("Opção inválida!");
  }
}

void mediaCalculada()



