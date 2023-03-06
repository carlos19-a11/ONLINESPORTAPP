// ignore_for_file: import_of_legacy_library_into_null_safe, use_key_in_widget_constructors, unnecessary_string_escapes, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

//import 'package:carousel_pro/carousel_pro.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:onlinesports/Pages/Constant.dart';

class ProductoSlider extends StatefulWidget {
  @override
  State<ProductoSlider> createState() => _ProductoSliderState();
}

class _ProductoSliderState extends State<ProductoSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Carousel(
          images: [
            ExactAssetImage("assets/imags/adidasaiofabric.jpg"),
            ExactAssetImage("assets/imags/adidas-ultraboost.jpg"),
            ExactAssetImage("assets/imags/calzado-adidas.jpg")
          ],
          hasBorderRadius: true,
          radius: const Radius.circular(30),
          dotBgColor: Colors.transparent,
          dotIncreasedColor: KPrimaryColor,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: const Duration(
            milliseconds: 800,
          ),
        ),
      ),
    );
  }
}
