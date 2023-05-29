import 'package:flutter/material.dart';
import '../Views/Home_Screen.dart';
import '../Views/pages/user.dart';
import '../Widgets/cart/carts_secreents.dart';
import 'package:onlinesports/Routes/routes.dart';
import 'package:onlinesports/Views/auth/login_screen.dart';
import '../Views/Welcom_screen.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'mainPage': (_) => MainPage(),
  'LoginTenPage': (_) => LoginTenPage(),
  // 'HomenScreen': (_) => const HomeScreen(),
  CartScreen.routeName: (_) => const CartScreen(),
  'UsuarioPage': (_) => const UsuarioPage(username: '', usuario_id: ''),
};
