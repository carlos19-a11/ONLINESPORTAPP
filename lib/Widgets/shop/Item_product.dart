// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinesports/Model/carts.dart';

import 'cart_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            background: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFE6E6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 2, top: 15),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 5, top: 20, left: 230),
                      child: Image.asset(
                        "assets/icons/borrar.png",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            child: CartCard(cart: demoCarts[index]),
          ),
        ),
      ),
    );
  }
}
