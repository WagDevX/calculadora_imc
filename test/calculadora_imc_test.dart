import 'package:calculadora_imc/models/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcula IMC', () {
    var pessoa = Pessoa("Wagner", 67.7, 1.70);
    expect(pessoa.retornaIMC(), greaterThanOrEqualTo(23.36));
  });
  test('Calcula IMC com peso zero', () {
    var pessoa = Pessoa("Wagner", 0, 1.70);
    expect(() => pessoa.retornaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });
  test('Calcula IMC com altura zero', () {
    var pessoa = Pessoa("Wagner", 67.7, 0);
    expect(() => pessoa.retornaIMC(), throwsA(TypeMatcher<ArgumentError>()));
  });
}
