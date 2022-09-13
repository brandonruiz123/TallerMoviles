import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:trabajo1/caracteristicas/bloc.dart';
 void main() {
  blocTest<BlocVerificacion, Estado>(
    'emits [MyState] when MyEvent is added.',
    build: () => BlocVerificacion(),
    act: (bloc) => bloc.add(Creado()),
    expect: () => {isA<EsperandoNombre>()},
  );
}
