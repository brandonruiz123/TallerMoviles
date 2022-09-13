import 'package:flutter_test/flutter_test.dart';
import 'package:trabajo1/caracteristicas/repositorio_verificacion.dart';
import 'package:trabajo1/dominio/nick_formado.dart';
import 'package:trabajo1/dominio/registro_usuario.dart';

void main() {
  group('Pruebas verificacion offline', () {
    test('Con benthor me regresa valor', (){
        RepositorioPruebasVerificacion repositorio = 
        RepositorioPruebasVerificacion();

        var resultado = repositorio.obtenerRegistroUsuario(NickFormado('benthor'));
        resultado.match(
        (l){
          expect(false,equals(true));
        },
        ((r){
          expect(r.anioRegistro, equals(2012));
          expect(r.nombre, equals('Benthor'));
          expect(r.apellidos, equals(mensajeCampoVacio));
          expect(r.estado, equals(mensajeCampoVacio));
          expect(r.pais, equals(mensajeCampoVacio));
        }
        ));
    });
    test('Con amlo me regresa error', (){

    });
  });

  // group('Registro usuario correcto', (() {
  //   final r = RegistroUsuario(propuestaAnio: propuestaAnio,
  //   propuestaNombre: propuestaNombre, 
  //   propuestaApellidos: propuestaApellidos, 
  //   propuestaPais: propuestaPais, 
  //   propuestaEstado: propuestaEstado)
  // });
  // expect(r, matcher)
}