// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';
import 'package:onlinesports/Views/botonbar.dart';
import 'package:onlinesports/Views/bottomNavigationBar.dart';
//import 'package:onlinesports/Views/bottomNavigationBar.dart';
import 'package:onlinesports/Views/enum.dart';
import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBGColor,
      body: HomeBody(
        username: username,
      ),
      bottomNavigationBar: bottomNavigationBar(
        username: username,
        selectedMenu: MenuState.home,
      ),
    );
  }
}
