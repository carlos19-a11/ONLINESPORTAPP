// ignore_for_file: file_names, unnecessary_const

import 'package:flutter/material.dart';
import 'Constant.dart';
import 'Home_Body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: KBGColor,
      body: HomeBody(),
    );
  }
}
