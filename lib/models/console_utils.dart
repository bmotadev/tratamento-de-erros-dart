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
}