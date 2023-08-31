class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  getNome() {
    return _nome;
  }

  getPeso() {
    return _peso;
  }

  getAltura() {
    return _altura;
  }

  setAltura(double altura) {
    _altura = altura;
  }

  setPeso(double peso) {
    _peso = peso;
  }

  setNome(String nome) {
    _nome = nome;
  }

  Pessoa(String nome, double peso, double altura) {
    _altura = altura;
    _peso = peso;
    _nome = nome;
  }

  double retornaIMC() {
    if (_altura == 0) {
      throw ArgumentError("Altura não pode ser zero!");
    } else if (_peso == 0) {
      throw ArgumentError("Peso não pode ser zero!");
    }
    return _peso / (_altura * _altura);
  }

  void printaResultadoIMC() {
    var imc = retornaIMC();
    var imcFormatado = retornaIMC().toStringAsFixed(2);
    switch (imc) {
      case < 16:
        print(
            "$_nome, o seu IMC é $imcFormatado e você está com Magreza grave!");
      case >= 16 && < 17:
        print(
            "$_nome, o seu IMC é $imcFormatado e você está com Magreza moderada!");
      case >= 17 && < 18.5:
        print(
            "$_nome, o seu IMC é $imcFormatado e você está com Magreza leve!");
      case >= 18.5 && < 25:
        print("$_nome, o seu IMC é $imcFormatado e você está saudável!");
      case >= 25 && < 30:
        print("$_nome, o seu IMC é $imcFormatado e você está com Sobrepeso!");
      case >= 30 && < 35:
        print(
            "$_nome, o seu IMC é $imcFormatado e você está com Obesidade Grau I!");
      case >= 35 && < 40:
        print(
            "$_nome, o seu IMC é $imcFormatado e você está com Obesidade Grau II(Severa)!");
      case >= 40:
        print(
            "$_nome, o seu IMC é $imcFormatado e você está com Obesidade Grau III(Mórbida)!");
    }
  }
}
