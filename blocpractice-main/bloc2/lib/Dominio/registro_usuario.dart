const String mensajeRegistroUsuarioError = 'Error en el registro de Usuario';
const String mensajeCampoVacio = 'Sin valor';

class RegistroUsario{
  late final int  anioRegistro;
  late final String nombre;
  late final String apellidos;
  late final String pais;
  late final String estado;

  RegistroUsario._(this.anioRegistro, this.nombre, this.apellidos, this.pais, this.estado);

  RegistroUsario(
    {required String propuestaAnio,
     required String propuestaNombre, 
     required String propuestaApellidos, required String propuestaPais,
     required String propuestaEstado})
    {
      int? valorAnio = int.tryParse(propuestaAnio);

      if (valorAnio == null) {
          throw mensajeRegistroUsuarioError; 
       }

       if (propuestaNombre.trim().isEmpty) {
         throw mensajeRegistroUsuarioError; 
       }

       propuestaApellidos=propuestaApellidos.trim().isEmpty? mensajeCampoVacio: propuestaApellidos;

       propuestaPais=propuestaPais.trim().isEmpty? mensajeCampoVacio: propuestaPais;

       propuestaEstado=propuestaEstado.trim().isEmpty? mensajeCampoVacio: propuestaEstado;
      
      RegistroUsario._(valorAnio, propuestaNombre, propuestaApellidos, propuestaPais, propuestaEstado);
    }
}

