const String mensajeRegistroUsuarioError = 'Error Registro Usuario Incorrecto';
const String mensajeCampoVacio = 'sin valor';

class RegistroUsuario{
  late final int anioRegistro;
  late final String nombre;
  late final String apellidos;
  late final String pais;
  late final String estado;

  RegistroUsuario._(this.anioRegistro, this.nombre, this.apellidos, this.pais, this.estado);
  
  //Se agrega factory y .constructor para que permita devolver valores distintos a los declarados
  factory RegistroUsuario.constructor({required String propuestaAnio,
   required String propuestaNombre,
   required String propuestaApellidos,
   required String propuestaPais,
   required String propuestaEstado}){

  int? valorAnio = int.tryParse(propuestaAnio);
  if(valorAnio==null){
    throw mensajeRegistroUsuarioError;
  }
  
  if(propuestaNombre.trim().isEmpty){
    throw mensajeRegistroUsuarioError;
  }

  propuestaApellidos = propuestaApellidos.trim().isEmpty? mensajeCampoVacio : propuestaApellidos;
  propuestaPais = propuestaPais.trim().isEmpty? mensajeCampoVacio : propuestaPais;
  propuestaEstado = propuestaEstado.trim().isEmpty? mensajeCampoVacio : propuestaEstado;
  
  final resultado = RegistroUsuario._(valorAnio,propuestaNombre,propuestaApellidos,propuestaPais,propuestaEstado);
  return resultado;
  }
}

