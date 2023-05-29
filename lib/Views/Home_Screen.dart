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
  final String usuario_id;
  const HomeScreen(
      {super.key, required this.username, required this.usuario_id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBGColor,
      body: HomeBody(usuario_id: usuario_id),
      bottomNavigationBar: bottomNavigationBar(
        username: username,
        usuario_id: usuario_id,
        selectedMenu: MenuState.home,
      ),
    );
  }
}
