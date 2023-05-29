// ignore_for_file: use_key_in_widget_constructors, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';

class BontonNaranja extends StatelessWidget {
  final String text;
  final String idproducto;
  final String usuario_id;

  const BontonNaranja(
      {required this.text, required this.idproducto, required this.usuario_id});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.amber,
        ),
        child: Text(
          '$text',
          style: TextStyle(color: Colors.white),
        ),
      ),
      onTap: () {
        print(usuario_id);
      },
    );
  }
}
