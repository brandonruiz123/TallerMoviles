import 'package:flutter/material.dart';

class VistaSolicitandoNombre extends StatelessWidget {
  const VistaSolicitandoNombre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Dame el Nombre'),
        const TextField(),
        TextButton(onPressed: () {} , child: Text("Algo debe de ir aqui"),)
      ]
       );
  }
}

