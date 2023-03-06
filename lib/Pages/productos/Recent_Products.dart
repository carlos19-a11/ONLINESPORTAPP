// ignore_for_file: prefer_typing_uninitialized_variables, non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_element, file_names, prefer_const_constructors, unnecessary_brace_in_string_interps, must_be_immutable

import 'package:flutter/material.dart';
import 'package:onlinesports/Pages/Constant.dart';

class RecentProducts extends StatelessWidget {
  final productList = [
    {
      'name': 'Bolso Adidas ',
      'image': 'assets/imags/Bolso-Taycan.png',
      'price': 120000,
      'disc': ''
    },
    {
      'name': 'Zapatillas Reebok',
      'image': 'assets/imags/calzado.png',
      'price': 300000,
      'disc': ''
    },
    {
      'name': 'Camiseta Nike',
      'image': 'assets/imags/camiseta.jpg',
      'price': 100000,
      'disc': ''
    },
    {
      'name': 'Ropa Deportiva para hombre',
      'image': 'assets/imags/Ropa_deportiva_hombre.png',
      'price': 80000,
      'disc': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.78),
        itemBuilder: (BuildContext context, int index) {
          return RecentSignlePoducts(
            recent_signle_prod_disc: productList[index]['disc'],
            recent_signle_prod_name: productList[index]['name'],
            recent_signle_prod_image: productList[index]['image'],
            recent_signle_prod_price: productList[index]['price'],
          );
        });
  }
}

class RecentSignlePoducts extends StatelessWidget {
  final recent_signle_prod_name;
  final recent_signle_prod_image;
  final recent_signle_prod_price;
  final recent_signle_prod_disc;
  RecentSignlePoducts({
    this.recent_signle_prod_name,
    this.recent_signle_prod_image,
    this.recent_signle_prod_price,
    this.recent_signle_prod_disc,
  });
  //funcio de button
  bool isLike = false;
  final Color inactiveColor = Colors.black38;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: KPrimaryColor,
          ),
          child: Image.asset(recent_signle_prod_image),
        ),
        ListTile(
            title: Text(recent_signle_prod_name),
            subtitle: Text('\$:${recent_signle_prod_price}'),
            trailing: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: KPrimaryColor,
                  borderRadius: BorderRadius.circular(30)),
              child: IconButton(
                icon: Icon(
                  isLike ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLike ? Colors.red : inactiveColor,
                  size: 15,
                ),
                onPressed: () {
                  // SetState(() {
                  //   isLike = !isLike;
                  // });
                },
              ),
            ))
      ],
    );
  }
}
