import 'package:flutter/material.dart';
import '../Pages/Home_Screen.dart';
import '../Pages/main_page/user.dart';
import '../carts/carts_secreents.dart';
import '../screens/login10/login_ten_screen.dart';
import '../screens/main_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'mainPage': (_) => MainPage(),
  'LoginTenPage': (_) => LoginTenPage(),
  'HomenScreen': (_) => const HomeScreen(),
  CartScreen.routeName: (_) => const CartScreen(),
  'UsuarioPage': (_) => const UsuarioPage(),
};
