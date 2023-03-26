// ignore: file_names
// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'Constant.dart';
import 'Home_Body.dart';
import 'enum.dart';
import 'slider/bottomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KBGColor,
      body: HomeBody(),
      bottomNavigationBar: bottomNavigationBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
