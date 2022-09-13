import 'package:flutter_application_2/bloc-aplicacion/bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
void main() {
 blocTest<BlocVerificacion, EstadoVerificacion>(
  'emits [Kiubole] when MyEvent is added.',
  build: () => BlocVerificacion(),
  act: (bloc) => bloc.add(Creado()),
  expect: () => [isA<SolicitandoNombre>()],
 );
}