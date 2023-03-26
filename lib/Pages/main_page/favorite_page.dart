import 'package:flutter/material.dart';

import '../enum.dart';
import '../slider/bottomNavigationBar.dart';

class FavrtScreen extends StatefulWidget {
  const FavrtScreen({super.key});

  @override
  State<FavrtScreen> createState() => _FavrtScreenState();
}

class _FavrtScreenState extends State<FavrtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavrtScreen'),
      ),
      bottomNavigationBar: bottomNavigationBar(
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
