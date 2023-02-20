class NomeInvalidoException implements Exception {
  String error() => "Nome inválido";

  @override
  String toString() {
    // ignore: todo
    // TODO: implement toString
    return "NomeInvalidoException: ${error()}";
  }
}