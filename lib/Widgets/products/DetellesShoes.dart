import 'package:flutter/material.dart';
import 'package:onlinesports/Model/shoes.dart';

class DetellesShoes extends StatefulWidget {
  const DetellesShoes({super.key, required this.shoes});
  final Shoes shoes;
  @override
  State<DetellesShoes> createState() => _DetellesShoesState();
}

class _DetellesShoesState extends State<DetellesShoes> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -Size.height * 0.15,
            right: -Size.width * 0.15,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              height: Size.height * 0.5,
              width: Size.width * 0.5,
              decoration: BoxDecoration(
                color: widget.shoes.listimage[0].color,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
              //top: ,
              child: Row(
            children: [],
          )),
        ],
      ),
    );
  }
}
