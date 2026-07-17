# Projeto Turma

Este repositório contém o projeto de gerenciamento de turmas em Dart, desenvolvido como um aplicativo de console.

## Estrutura do projeto

- `main.dart` — ponto de entrada do aplicativo
- `menu.dart` — interface de menu e lógica de interação com o usuário
- `turma.dart` — gerenciamento de alunos, cadastro de notas, listagem e exportação JSON
- `aluno.dart` — classe de aluno, cálculo de médias e exibição de notas
- `nota.dart` — abstração de notas com tipos de prova e trabalho

## Funcionalidades

- cadastrar alunos
- lançar notas de prova e trabalho
- listar notas de todos os alunos ou de um aluno específico
- calcular média aritmética de um aluno
- calcular média ponderada de um aluno
- listar alunos cadastrados
- exportar dados da turma em formato JSON

## Como executar

1. Abra o terminal no diretório deste projeto.

2. Execute o aplicativo Dart:

```powershell
dart run main.dart
```

## Uso

Ao executar, o menu apresenta as opções:

1. Cadastrar aluno
2. Lançar nota
3. Listar notas
4. Calcular média
5. Calcular média ponderada
6. Listar alunos
7. Serialização de turmas (JSON)
8. Sair

### Cadastrar aluno
- Insira o nome do aluno para adicioná-lo à turma.

### Lançar nota
- Escolha se a nota é de `prova` ou `trabalho`.
- Informe o nome do aluno, o valor da nota e a descrição.

### Listar notas
- Escolha listar notas de todos os alunos ou de um aluno específico.

### Calcular média
- Informa a média aritmética das notas de um aluno.

### Calcular média ponderada
- Informa a média ponderada das notas de um aluno, considerando peso 2 para provas e peso 1 para trabalhos.

### Listar alunos
- Mostra a lista de alunos cadastrados e, se desejado, suas notas.

### Serialização de turmas (JSON)
- Exibe os dados da turma em formato JSON.

## Observações

- Projeto de linha de comando, não um app Flutter.
- O Dart SDK deve estar instalado e disponível no PATH.
- Os dados são mantidos apenas durante a execução do programa; não há persistência em arquivo.
