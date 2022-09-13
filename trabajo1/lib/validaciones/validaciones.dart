class Validador {
  late final String value;
  Validador(String propuesta) {
    if (!(propuesta.trim().isNotEmpty)) {
      throw UsuarioError();
    }
    value = propuesta;
  }
}

class UsuarioError implements Exception {}
