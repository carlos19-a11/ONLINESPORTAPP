// ignore_for_file: avoid_print, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';

import '../../Widgets/products/DetellesShoes.dart';
import '../../Model/shoes.dart';

class RecentProducts extends StatelessWidget {
  final List<Map<String, dynamic>> productList = [
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
      'name': 'Ropa Deportiva ',
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
            crossAxisCount: 2, childAspectRatio: 0.58),
        itemBuilder: (BuildContext context, int index) {
          return RecentSingleProducts(
            recentSingleProdDisc: productList[index]['disc'],
            recentSingleProdName: productList[index]['name'],
            recentSingleProdImage: productList[index]['image'],
            recentSingleProdPrice: productList[index]['price'],
          );
        });
  }
}

class RecentSingleProducts extends StatefulWidget {
  final String recentSingleProdName;
  final String recentSingleProdImage;
  final int recentSingleProdPrice;
  final String recentSingleProdDisc;

  const RecentSingleProducts({
    Key? key,
    required this.recentSingleProdName,
    required this.recentSingleProdImage,
    required this.recentSingleProdPrice,
    required this.recentSingleProdDisc,
  }) : super(key: key);

  @override
  _RecentSingleProductsState createState() => _RecentSingleProductsState();
}

class _RecentSingleProductsState extends State<RecentSingleProducts> {
  bool isLike = false;

  final Color inactiveColor = Colors.black38;

  var shoes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
              pageBuilder: (context, animation, _) {
                return DetellesShoes(shoes: shoes);
              },
            ));
          },
          child: Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: KPrimaryColor,
            ),
            child: Image.asset(widget.recentSingleProdImage),
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
