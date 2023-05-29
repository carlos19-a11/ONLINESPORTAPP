import 'package:flutter/material.dart';
import 'package:onlinesports/Repositories/Constant.dart';

import '../enum.dart';
import '../bottomNavigationBar.dart';

class FavrtScreen extends StatelessWidget {
  final String username;
  final String usuario_id;

  const FavrtScreen(
      {super.key, required this.username, required this.usuario_id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FavrtScreen'),
      ),
      body: ListView(
        children: [
          sizedBox,
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/icons/hombre.png"),
            ),
            title: const Text('prueba'),
            subtitle: const Text('otra prueba'),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            tileColor: KPrimaryColor,
            onLongPress: () {},
            // hoverColor: Colors.green,
            // focusColor: Colors.amber,
            // contentPadding: const EdgeInsets.all(50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          sizedBox,
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("assets/icons/hombre.png"),
            ),
            title: const Text('prueba'),
            subtitle: const Text('otra prueba'),
            trailing: const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            tileColor: KPrimaryColor,
            onLongPress: () {},
            // hoverColor: Colors.green,
            // focusColor: Colors.amber,
            // contentPadding: const EdgeInsets.all(50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(
        username: username,
        usuario_id: usuario_id,
        selectedMenu: MenuState.favourite,
      ),
    );
  }
}
