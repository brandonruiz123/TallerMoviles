import 'package:flutter/material.dart';
import 'package:flutter_application_2/verificacion/vistas/vista_esperando_nombre.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_2/bloc-aplicacion/bloc.dart';
import 'package:flutter_application_2/verificacion/vistas/vistas_creandose.dart';


void main() {
  runApp(Aplicacion());
}

class AplicacionInyectada extends StatelessWidget {
  const AplicacionInyectada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        BlocVerificacion blocVerificacion=BlocVerificacion();
        Future.delayed(Duration(seconds: 2), (){
          blocVerificacion.add(Creado());
        });
        return BlocVerificacion();
      },
      child: const Aplicacion(),
    );
  }
}

class Aplicacion extends StatelessWidget {
  const Aplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(builder: (context){
          var estado = context.watch<BlocVerificacion>().state;
          if (estado is Creandose){
            return const VistasCreandose();
          }
           if (estado is SolicitandoNombre){
            return const VistaSolicitandoNombre();
          }
          return Center(child: Text('si estas viendo esto algo salio mal, HUYE'));
        },),
      ),
    );
  }
}

