// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../Repositories/Constant.dart';

class CustomAppBar extends StatelessWidget {
  final String username;
  const CustomAppBar({super.key, required this.username});

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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("OnliSport"),
            Text(
              "Bienvenido $username",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        CircleAvatar(
          backgroundImage: AssetImage(
            'assets/icons/hombre.png',
          ),
          backgroundColor: KPrimaryColor,
        ),

        // ignore: duplicate_ignore
      ],
    );
  }
}
