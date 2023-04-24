// ignore_for_file: use_key_in_widget_constructors, unnecessary_string_interpolations, prefer_const_constructors

import 'package:flutter/material.dart';

class BontonNaranja extends StatelessWidget {
  final String text;

  const BontonNaranja({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
