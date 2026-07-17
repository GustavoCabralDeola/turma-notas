# Projeto de Exemplos Dart

Este repositório contém exemplos de aplicativos de console escritos em Dart, organizados em três subprojetos:

- `agenda/` — agenda de contatos com CRUD, armazenamento em arquivo e histórico.
- `aulaexemplo/` — exemplo simples de leitura de nomes via terminal.
- `turma/` — sistema de gerenciamento de turma, cadastro de alunos, lançamento de notas e exportação JSON.

## Estrutura do projeto

- `agenda/`
  - `main.dart` — ponto de entrada do aplicativo de agenda.
  - `agenda.dart` — classes e métodos de menu, CRUD e persistência.
  - `contato.dart` — modelos de contato pessoal e empresarial.
  - `file.txt` — arquivo de dados local usado para salvar contatos.
  - `README.md` — documentação específica do projeto de agenda.

- `aulaexemplo/`
  - `aula1.dart` — exemplo de leitura de 10 nomes do usuário e exibição em lista.

- `turma/`
  - `main.dart` — ponto de entrada do sistema de turma.
  - `menu.dart` — interface de menu e lógica de interação com o usuário.
  - `turma.dart` — gerenciamento de alunos, notas e exportação JSON.
  - `aluno.dart` — modelo de aluno, cálculo de médias e exibição de notas.
  - `nota.dart` — abstração de notas e tipos de nota com pesos.

## Como executar

Cada subprojeto é um aplicativo Dart independente. Use o terminal no diretório do subprojeto e execute o arquivo `main.dart` ou `aula1.dart`.

Exemplos:

```powershell
cd c:\Users\gustavo65907866\Documents\Gustavo\flutter\aulas\agenda
dart run main.dart
```

```powershell
cd c:\Users\gustavo65907866\Documents\Gustavo\flutter\aulas\aulaexemplo
dart run aula1.dart
```

```powershell
cd c:\Users\gustavo65907866\Documents\Gustavo\flutter\aulas\turma
dart run main.dart
```

## Descrição dos subprojetos

### agenda

Agenda de contatos com as funcionalidades:

- adicionar contatos pessoais ou empresariais
- listar contatos
- editar contatos
- remover contatos
- buscar contatos por nome, telefone ou email
- histórico de operações
- salvar e carregar contatos de `file.txt`

### aulaexemplo

Exemplo simples que:

- lê 10 nomes do usuário
- armazena em uma lista
- exibe a lista numerada no terminal

### turma

Sistema de gerenciamento de turma com recursos para:

- cadastrar alunos
- lançar notas de prova e trabalho
- listar notas por aluno ou por turma
- calcular média aritmética
- calcular média ponderada
- listar alunos cadastrados
- exportar a turma como JSON

## Observações

- Todos os exemplos são aplicativos de linha de comando, não são projetos Flutter.
- O Dart SDK deve estar instalado e disponível no PATH.
- No projeto `agenda`, o arquivo `file.txt` é usado para persistência; se não existir, será criado na primeira execução.

## Referências

- Leia também `agenda/README.md` para detalhes específicos da agenda de contatos.
