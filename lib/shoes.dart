import 'package:flutter/material.dart';

class ImageShoes {
  ImageShoes(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Shoes {
  Shoes(this.name, this.categoria, this.listimage, this.prive, this.puntuation);

  final String name;
  final String categoria;
  final String prive;
  final int puntuation;
  final List<ImageShoes> listimage;
}
