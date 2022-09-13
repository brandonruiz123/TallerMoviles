import 'package:bloc2/bloc/bloc.dart';
import 'package:bloc2/vistas/vista-cargando.dart';
import 'package:bloc2/vistas/vista-solicitandoNombre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MiAplicacionInyectada());
}

class MiAplicacionInyectada extends StatelessWidget {
  const MiAplicacionInyectada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) {
        BlocVerificacion blocVerificacion=BlocVerificacion();
        Future.delayed(Duration(seconds: 5),() {
          blocVerificacion.add(Creado());
        });
        return blocVerificacion;
  
      },
      child: Aplicacion(),
    );
    
  }
}


class Aplicacion extends StatelessWidget {
  const Aplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicacion',
      home: Scaffold(
        body: Builder(builder:((context) {
          var estado =context.watch<BlocVerificacion>().state;
          if(estado is Creandose){
            return  VistaCargando();
          }
          if(estado is SolicitandoNombre){
            return VistaSolicitandoNombre();
          }
          return Text('Huye');
        }),
      ),
    ));
  }
}