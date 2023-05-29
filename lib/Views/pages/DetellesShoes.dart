// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Widgets/products/custom_widgets.dart';

class DetellesShoes extends StatefulWidget {
  final String recentSingleProdName;
  final String recentSingleProdImage;
  final String recentSingleProdPrice;
  final String recentSingleProdDisc;
  final int recentSingleProdId;
  final String usuario_id;

  const DetellesShoes({
    Key? key,
    required this.recentSingleProdName,
    required this.recentSingleProdImage,
    required this.recentSingleProdPrice,
    required this.recentSingleProdDisc,
    required this.recentSingleProdId,
    required this.usuario_id,
  }) : super(key: key);

  @override
  State<DetellesShoes> createState() => _DetellesShoesState();
}

class _DetellesShoesState extends State<DetellesShoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        CustonAppbar(
          text: 'For you${widget.recentSingleProdId}',
        ),
        sizedBox,
        Expanded(
          child: SingleChildScrollView(
            //para quitar las linea azul
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ZapatoSize(
                  recentSingleProdImage: widget.recentSingleProdImage,
                ),
                ZapatoDescripcion(
                  titulo: widget.recentSingleProdName,
                  descripcion: widget.recentSingleProdDisc,
                )
              ],
            ),
          ),
        ),
        AgregarCarritoBoton(
            monto: widget.recentSingleProdPrice,
            idproducto: widget.recentSingleProdId.toString(),
            usuario_id: widget.usuario_id)
      ],
    ));
  }
}
