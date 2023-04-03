import 'package:flutter/material.dart';

import '../enum.dart';
import '../bottomNavigationBar.dart';

class ShoppingCartScreen extends StatelessWidget {
  final String username;

  const ShoppingCartScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppingcart'),
      ),
      bottomNavigationBar: const bottomNavigationBar(
        selectedMenu: MenuState.shoppingcart,
        username: '',
      ),
    );
  }
}
