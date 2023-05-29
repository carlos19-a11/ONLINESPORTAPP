import 'package:flutter/material.dart';

import '../enum.dart';
import '../bottomNavigationBar.dart';

class ShoppingCartScreen extends StatelessWidget {
  final String username;
  final String usuario_id;

  const ShoppingCartScreen(
      {super.key, required this.username, required this.usuario_id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppingcart'),
      ),
      bottomNavigationBar: bottomNavigationBar(
          selectedMenu: MenuState.shoppingcart,
          username: username,
          usuario_id: usuario_id),
    );
  }
}
