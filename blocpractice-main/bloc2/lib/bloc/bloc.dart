import 'package:flutter_bloc/flutter_bloc.dart';


class Estado{}
class Creandose extends Estado{}
class SolicitandoNombre extends Estado{}
class EsperandoConfirmacion extends Estado{}
class MostrandoConfirmacionNombre extends Estado{}

class Evento{}
class Creado extends Evento{}

class BlocVerificacion extends Bloc<Evento, Estado> {
  BlocVerificacion() : super(Creandose()) {
    on<Creado>((event, emit) {
      emit(SolicitandoNombre());
    });
  }
}