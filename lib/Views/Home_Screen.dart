// ignore: file_names
// ignore_for_file: camel_case_types, prefer_const_constructors, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import '../Repositories/Constant.dart';
import 'Home_Body.dart';
import 'enum.dart';
import 'bottomNavigationBar.dart';

// class HomeScreen extends StatefulWidget {
//   final String username;
//   const HomeScreen({Key? key, required this.username}) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: KBGColor,
//       body: HomeBody(),
//       bottomNavigationBar: bottomNavigationBar(
//         selectedMenu: MenuState.home,
//       ),
//     );
//   }
// }

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
