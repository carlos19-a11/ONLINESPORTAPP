// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';

class CategoryProducts extends StatelessWidget {
  const CategoryProducts({
    Key? key,
    required this.text,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: press,
        child: Container(
          child: Chip(
              backgroundColor: KPrimaryColor,
              label: Row(
                children: [
                  Image.asset(
                    image,
                    height: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    text,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
