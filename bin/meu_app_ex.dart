import 'dart:convert';
import 'dart:io';

import 'package:meu_app_ex/meu_app_ex.dart' as meu_app_ex;

void main(List<String> arguments) {
  print("Digite um número");
  var line = stdin.readLineSync(encoding: utf8);
  try {
    double numero = double.parse(line ?? ""); // pode ser nulo
    print(numero);
  } catch (e) {
    print("Numero invalido: $line");
  } finally { // é executado independente se deu erro ou não
    print("Executando finally");
  }
}
