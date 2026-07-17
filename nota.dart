abstract class Nota {
  double valor;
  String descricao;
  Nota(this.valor, this.descricao);

  double get peso;
  String get tipo;

    Map<String, dynamic> toMap() => {
    'valor': valor,
    'descricao': descricao,
    'peso': peso,
    'tipo': tipo,
  };

  void exibirNotas(){
    print("Nota: ${valor}, Descrição: ${descricao}, Peso: ${peso}");
  }
}

class NotaProva extends Nota {
  @override
  double get peso => 2;
  @override
  String get tipo => "Prova";

  NotaProva(double valor, String descricao) : super(valor, descricao);
  
}

class NotaTrabalho extends Nota {
  @override
  double get peso => 1;
  @override
  String get tipo => "Trabalho";

  NotaTrabalho(double valor, String descricao) : super(valor, descricao); 


}







