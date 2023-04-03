// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

import '../../Model/carts.dart';
import 'package:onlinesports/Widgets/shop/Item_product.dart';
import 'package:onlinesports/Widgets/shop/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";

  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: const CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Center(
            child: const Text(
              "Tu carrito",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Text("${demoCarts.length} elementos",
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
