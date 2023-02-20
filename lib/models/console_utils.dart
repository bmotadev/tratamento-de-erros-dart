import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  // quando temos metodos estaticos dentro de uma classe, conseguimos acessar. Sem a necessidade de instanciar.
  static String lerStringComTexto(String texto) {
    print(texto);
    return lerString();
  }
  
  static String lerString() {
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double? lerDouble() { // aceita nulo
    var value = lerString();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? lerDoubleComTextoComSaida(String texto, String valorSaida) { // aceita nulo

    do {
      try {
        var value = lerStringComTexto(texto);
        if(value == valorSaida) {
          return null;
        }
        return double.parse(value);
      } catch (e) {
        print(texto);
      }
    } while (true);
  }

  static double? lerDoubleComTexto(String texto) {
    print(texto);
    return lerDouble();
  }
}