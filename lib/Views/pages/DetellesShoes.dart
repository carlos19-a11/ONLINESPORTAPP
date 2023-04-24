// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Widgets/products/custom_widgets.dart';

class DetellesShoes extends StatelessWidget {
  const DetellesShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        CustonAppbar(
          text: 'For you',
        ),
        sizedBox,
        Expanded(
          child: SingleChildScrollView(
            //para quitar las linea azul
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ZapatoSize(),
                ZapatoDescripcion(
                  titulo: 'Nike Air Max 720',
                  descripcion:
                      'Las zapatillas más cómodas del mundo: suaves, ultra-ligeras, flexibles y transpirables. Hechas 100% en España con lana merina y piel de uva. Ideales para todo el año',
                )
              ],
            ),
          ),
        ),
        AgregarCarritoBoton(monto: 300.0)
      ],
    ));
  }
}
