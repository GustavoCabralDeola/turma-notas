import 'dart:io';
import 'aluno.dart';
import 'nota.dart';
import 'turma.dart';

void menu(Turma turmaModel){

  print("============================================================================");
  print("------------>Bem vindo ao sistema de gerenciamento de turmas!<------------");
  print("============================================================================");

  stdout.writeln("Escolha uma opção:");
  stdout.writeln("1 - Cadastrar aluno, 2 - Lançar nota, 3 - Listar notas, 4 - Calcular média, 5 - Calcular média ponderada, 6 - Listar Alunos, 7 - Serialização de Turmas (JSON), 8 - Sair");
  String opcao = stdin.readLineSync()!;

  switch(opcao){
    case "1":
    case "Cadastrar aluno":
      turmaModel.cadastrarAluno();
      break;
    case "2":
    case "Lançar nota":
      lancarNota(turmaModel);
      break;
    case "3":
    case "Listar notas":
      listarNotas(turmaModel);
      break;
    case "4":
    case "Calcular média":
      calcularMedia(turmaModel);
      break;
    case "5":
    case "Calcular média ponderada":
      calcularMediaPonderada(turmaModel);
      break;
    case "6":
    case "Listar alunos":
      listarAlunos(turmaModel);

    case "7":
    case "JSON":
     print(turmaModel.exportarJson()); 
    case "8":
    case "Sair":
      print("Saindo do sistema...");
      exit(0);
    default:
      print("Opção inválida!");
  }

}

void lancarNota(Turma turmaModel) {

  stdout.writeln("Deseja lançar uma nota de prova ou de trabalho? (Digite 'prova' ou 'trabalho')");
  String opcao = stdin.readLineSync()!;
 
  
  stdout.writeln("Digite o nome do aluno que você deseja lançar a nota: ");
  String nomeAluno = stdin.readLineSync()!;
  Aluno? filtroNomeAluno = turmaModel.buscarAlunoPorNome(nomeAluno);

  if (filtroNomeAluno == null){
    print("Aluno não encontrado");
    return;
  }

  stdout.writeln("Digite o valor da nota:");
  double valorNota = double.parse(stdin.readLineSync()!);

  stdout.writeln("Digite a descrição da nota:");
  String descricaoNota = stdin.readLineSync()!;

  if (opcao.toLowerCase() == "trabalho") {
    NotaTrabalho notaTrabalhoModel = NotaTrabalho(valorNota, descricaoNota);
    turmaModel.cadastrarNota(filtroNomeAluno, notaTrabalhoModel);
  } else if (opcao.toLowerCase() == "prova") {
    NotaProva notaProvaModel = NotaProva(valorNota, descricaoNota);
    turmaModel.cadastrarNota(filtroNomeAluno, notaProvaModel);
  } else {
    print("Opção inválida!");   
  }
}


void listarNotas(Turma turmaModel) {

  stdout.writeln("Deseja listar as notas de todos os alunos? Digite 'S' para sim ou 'N' para não");
  String opcao = stdin.readLineSync()!;

  if (opcao.toLowerCase() == 'sim' || opcao.toUpperCase() == "S") {
    turmaModel.listarTodasAsNotas();
  } else if (opcao.toLowerCase() == 'não' || opcao.toUpperCase() == "N") {
    stdout.writeln("Digite o nome do aluno:");
    String nomeAluno = stdin.readLineSync()!;
    turmaModel.listarNotaEspecifica(nomeAluno);
  } else {
    print("Opção inválida!");
  }
}

void listarAlunos(Turma turmaModel){
  turmaModel.listarOsAlunos();
}


void calcularMedia(Turma turma) {
  stdout.writeln("Digite o nome do aluno:");
  String nomeAluno = stdin.readLineSync()!;

  Aluno? aluno = turma.buscarAlunoPorNome(nomeAluno);

  if (aluno == null) {
    print("Aluno não encontrado!");
    return;
  }

  print("A média de ${aluno.nome} é ${aluno.media}");
}

void calcularMediaPonderada(Turma turmaModel) {
  stdout.writeln("Digite o nome do aluno:");
  String nomeAluno = stdin.readLineSync()!;

  Aluno? aluno = turmaModel.buscarAlunoPorNome(nomeAluno);

  if (aluno == null) {
    print("Aluno não encontrado!");
    return;
  }

  print("A média ponderada de ${aluno.nome} é ${aluno.mediaPonderada}");
}
