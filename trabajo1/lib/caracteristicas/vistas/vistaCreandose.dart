
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class vistaCreandose extends StatelessWidget {
  const vistaCreandose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const Center(child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(),
      ));
  }
}