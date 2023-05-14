// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  String status;
  List<Datum> data;

  Products({
    required this.status,
    required this.data,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  int productoId;
  int categoriaId;
  String nombre;
  String descripcion;
  int stock;
  int precio;
  String img;

  Datum({
    required this.productoId,
    required this.categoriaId,
    required this.nombre,
    required this.descripcion,
    required this.stock,
    required this.precio,
    required this.img,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        productoId: json["producto_id"],
        categoriaId: json["categoria_id"],
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        stock: json["stock"],
        precio: json["precio"],
        img: json["img"],
      );

  Map<String, dynamic> toJson() => {
        "producto_id": productoId,
        "categoria_id": categoriaId,
        "nombre": nombre,
        "descripcion": descripcion,
        "stock": stock,
        "precio": precio,
        "img": img,
      };
}
