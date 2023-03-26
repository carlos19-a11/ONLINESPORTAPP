import 'package:flutter/material.dart';

import '../enum.dart';
import '../slider/bottomNavigationBar.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoppingcart'),
      ),
      bottomNavigationBar: const bottomNavigationBar(
        selectedMenu: MenuState.shoppingcart,
      ),
    );
  }
}
