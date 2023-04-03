// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';
import 'package:onlinesports/Pages/enum.dart';
import '../../carts/carts_secreents.dart';
import '../Home_Screen.dart';
import '../main_page/favorite_page.dart';
import '../main_page/user.dart';

// ignore: camel_case_types
class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({Key? key, required this.selectedMenu})
      : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inactivecolor = Colors.grey;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                  color: Color(0xFFDADADA),
                  offset: Offset(0, -15),
                  blurRadius: 20)
            ]),
        child: SafeArea(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset(
                'assets/icons/casa.png',
              ),
              iconSize: 22,
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const HomeScreen()));
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/favorito.png',
                // color: MenuState.favourite == selectedMenu
                //     ? KPrimaryColor
                //     : inactivecolor,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavrtScreen()));
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/carro.png',
                // color: MenuState.shoppingcart == selectedMenu
                //     ? Colors.black
                //     : inactivecolor,
              ),
              iconSize: 22,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
                // icon: SvgPicture.asset('assets/imags/camiseta.jpg'),
              },
            ),
            IconButton(
              icon: Image.asset(
                'assets/icons/hombre.png',
                // color: MenuState.profile == selectedMenu
                //     ? KPrimaryColor
                //     : inactivecolor,
              ),
              iconSize: 22,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const UsuarioPage()));
              },
            ),
          ],
        )),
      ),
    );
  }
}
