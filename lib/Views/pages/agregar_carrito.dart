// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Widgets/products/custom_widgets.dart';

class AgregarCarritoBoton extends StatelessWidget {
  final double monto;

  AgregarCarritoBoton({required this.monto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            SizedBox(width: 20),
            Text(
              '\$$monto',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            BontonNaranja(text: 'Add to cart'),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
