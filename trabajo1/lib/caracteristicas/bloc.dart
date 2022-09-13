import 'package:bloc/bloc.dart';

class Evento {}

class Estado{}

class Creandose extends Estado{}

class Creado extends Evento{}

class EsperandoNombre extends Estado{

}

class SolicitandoNombre extends Estado{
  
}

class NombreRecibido extends Evento{
  final String nombre;
  NombreRecibido(this.nombre);
}

class BlocVerificacion extends Bloc<Evento, Estado> {
  BlocVerificacion() : super(Creandose()) {
    on<Creado>((event, emit) {
        emit(EsperandoNombre());
    });
  }
}