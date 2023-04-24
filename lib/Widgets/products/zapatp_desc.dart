import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';

class ZapatoDescripcion extends StatelessWidget {
  final String titulo;
  final String descripcion;
  const ZapatoDescripcion({required this.titulo, required this.descripcion});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sizedBox,
            Text(
              titulo,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            sizedBox,
            Text(
              descripcion,
              style: TextStyle(color: Colors.black54, height: 1.6),
            )
          ],
        ),
      ),
    );
  }
}
