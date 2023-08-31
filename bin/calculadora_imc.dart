import 'dart:io';

import 'package:calculadora_imc/exception/nome_invalido_exeption.dart';
import 'package:calculadora_imc/models/console_utils.dart';
import 'package:calculadora_imc/models/pessoa.dart';

void main(List<String> arguments) {
  print("Bem vindo a calculadora IMC DART!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o seu nome:");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    print(NomeInvalidoException());
    exit(0);
  }
  double? peso;
  peso = ConsoleUtils.lerDoubleComTexto("Digite seu peso:");
  while (peso == null) {
    peso = ConsoleUtils.lerDoubleComTexto("Peso inválido! Digite seu peso:");
  }

  double? altura;
  altura = ConsoleUtils.lerDoubleComTexto("Digite sua altura: ");
  while (altura == null) {
    altura =
        ConsoleUtils.lerDoubleComTexto("Altura inválida! Digite sua altura:");
  }

  var pessoa = Pessoa(nome, peso, altura);
  pessoa.printaResultadoIMC();
}
