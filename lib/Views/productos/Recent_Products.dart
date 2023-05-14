// ignore_for_file: avoid_print, prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Services/productos.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../pages/DetellesShoes.dart';
import '../../Model/shoes.dart';

class RecentProducts extends StatefulWidget {
  @override
  State<RecentProducts> createState() => _RecentProductsState();
}

class _RecentProductsState extends State<RecentProducts> {
  // final List<Map<String, dynamic>> productList = [
  //   {
  //     'name': 'Bolso Adidas ',
  //     'image': 'assets/imags/Bolso-Taycan.png',
  //     'price': "120.000",
  //     'disc': ''
  //   },
  //   {
  //     'name': 'Zapatillas Reebok',
  //     'image': 'assets/imags/calzado.png',
  //     'price': "300.000",
  //     'disc': ''
  //   },
  //   {
  //     'name': 'Camiseta Nike',
  //     'image': 'assets/imags/camiseta.jpg',
  //     'price': "100.000",
  //     'disc': ''
  //   },
  //   {
  //     'name': 'Ropa Deportiva ',
  //     'image': 'assets/imags/Ropa_deportiva_hombre.png',
  //     'price': "80.000",
  //     'disc': ''
  //   },
  // ];

  List data = [];
  void initState() {
    super.initState();
    const ip = "http://192.168.1.16:3000/api/";
    void obtenerProductos() async {
      print('obtenerProductos');
      final url = Uri.parse('${ip}products/allProducts');

      // final url = Uri.parse('https://fakeapi.platzi.com/en/rest/products');
      //final body = {"email": email, "password": password};

      final headers = {'Content-Type': 'application/json'};

      final response = await http.get(url);
      if (response.statusCode == 200) {
        print(response);
        // final responseData = jsonDecode(response.body);
        
        Map<String, dynamic> jsonMap = json.decode(response.body);
        data = jsonMap['data']['username'];
        // print(responseData.data);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => HomeScreen(
        //             username: username,
        //           )),
        // );

        // print(response.body);
      } else {
        // print()
        print('Error: ${response.reasonPhrase}');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.58),
        itemBuilder: (BuildContext context, int index) {
          return RecentSingleProducts(
            recentSingleProdDisc: data[index]['nombre'],
            recentSingleProdName: data[index]['descripcion'],
            recentSingleProdImage: data[index]['img'],
            recentSingleProdPrice: data[index]['precio'],
          );
        });
  }
}

class RecentSingleProducts extends StatefulWidget {
  final String recentSingleProdName;
  final String recentSingleProdImage;
  final String recentSingleProdPrice;
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
                return DetellesShoes();
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
