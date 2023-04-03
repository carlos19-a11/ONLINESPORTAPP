// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Widgets/categoriy/category_productos.dart';

class CategorPage extends StatefulWidget {
  const CategorPage({super.key});

  @override
  State<CategorPage> createState() => _CategorPageState();
}

class _CategorPageState extends State<CategorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProducts(
            press: () {},
            image: "assets/icons/sneakers.png",
            text: "Sneakers",
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/icons/ciclismo.png",
            text: "Sportswear",
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/icons/gorra.png",
            text: "Caps",
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/icons/paquete-de-bolsas.png",
            text: "Sports bag",
          ),
          SizedBox(
            width: 20,
          ),
          CategoryProducts(
            press: () {},
            image: "assets/icons/pelota-de-futbol.png",
            text: "Balls",
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
