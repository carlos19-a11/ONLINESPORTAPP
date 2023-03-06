// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import 'Constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.dashboard,
                color: KPrimaryColor,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
        // ignore: duplicate_ignore
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Unair"),
            Text(
              "Lahore, PKR",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        CircleAvatar(
          backgroundColor: KPrimaryColor,
        )
      ],
    );
  }
}
