import 'package:bloc2/Dominio/nick_formado.dart';
import 'package:bloc2/repositorio/repositorio_verificacion.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
 group('Pruebas Verificacion offline', () {
   test('Con benthor me regresa valor ', () {
     RepositorioPruebasVerificacion repositorio = RepositorioPruebasVerificacion();

     var resultado= repositorio.obtenerRegistroUsuario(NickFormado('benthor'));

     expect(resultado.nombre, equals('Benthor'));
     expect(resultado.anioRegistro, equals(2012));
   });
   test('Con amlo me regresa error', () {
     
   });
 });
}