import 'package:flutter/material.dart';

import '../enum.dart';
import '../bottomNavigationBar.dart';

class FavrtScreen extends StatelessWidget {
  final String username;

  const FavrtScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavrtScreen'),
      ),
      bottomNavigationBar: bottomNavigationBar(
        username: username,
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
