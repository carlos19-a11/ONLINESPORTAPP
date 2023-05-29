// ignore_for_file: library_private_types_in_public_api, unused_import, implementation_imports, unnecessary_import, file_names

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Views/pages/DetellesShoes.dart';

import '../../Model/Products.dart';
import '../../Services/auth.dart';

class RecentProducts extends StatefulWidget {
  final String usuario_id;

  const RecentProducts({super.key, required this.usuario_id});

  @override
  State<RecentProducts> createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  List<Datum> _listProducts = [];
  @override
  void initState() {
    super.initState();
    _loadProductos();
  }

  void _loadProductos() async {
    List<Datum> listProducts = await obtenerProductos();
    setState(() {
      _listProducts = listProducts;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _listProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 20, childAspectRatio: 0.90),
        itemBuilder: (BuildContext context, int index) {
          return RecentSingleProducts(
              recentSingleProdDisc: _listProducts[index].nombre,
              recentSingleProdId: _listProducts[index].productoId,
              recentSingleProdName: _listProducts[index].descripcion,
              recentSingleProdImage: _listProducts[index].img,
              recentSingleProdPrice: _listProducts[index].precio.toString(),
              usuario_id: widget.usuario_id);
        });
  }
}

class RecentSingleProducts extends StatefulWidget {
  final String recentSingleProdName;
  final String recentSingleProdImage;
  final String recentSingleProdPrice;
  final String recentSingleProdDisc;
  final int recentSingleProdId;
  final String usuario_id;

  const RecentSingleProducts({
    Key? key,
    required this.recentSingleProdName,
    required this.recentSingleProdImage,
    required this.recentSingleProdPrice,
    required this.recentSingleProdDisc,
    required this.recentSingleProdId,
    required this.usuario_id,
  }) : super(key: key);

  @override
  _RecentSingleProductsState createState() => _RecentSingleProductsState();
}

class _RecentSingleProductsState extends State<RecentSingleProducts> {
  bool isLike = false;

  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, _) {
                return DetellesShoes(
                  recentSingleProdDisc: widget.recentSingleProdDisc,
                  recentSingleProdId: widget.recentSingleProdId,
                  recentSingleProdImage: widget.recentSingleProdImage,
                  recentSingleProdName: widget.recentSingleProdName,
                  recentSingleProdPrice: widget.recentSingleProdPrice,
                  usuario_id: widget.usuario_id,
                );
              },
            ));
          },

          //Contenerdor de la imagenes
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: KPrimaryColor,
            ),
            child: Image.network(widget.recentSingleProdImage),
          ),
        ),
        ListTile(
          title: Text(widget.recentSingleProdName),
          subtitle: Text('\$:${widget.recentSingleProdPrice}'),
          trailing: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: KPrimaryColor, borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              icon: Icon(
                isLike ? Icons.favorite : Icons.favorite_border_outlined,
                color: isLike ? Colors.red : inactiveColor,
                size: 15,
              ),
              onPressed: () {
                setState(() {
                  isLike = !isLike;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
