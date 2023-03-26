import 'package:flutter/material.dart';
import 'package:onlinesports/Pages/Constant.dart';

import 'Routes/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: KBGSecunColor,
        elevation: 0,
      )),
      debugShowCheckedModeBanner: false,
      title: 'Multi - Login',
      initialRoute: 'mainPage',
      routes: routes,
    );
  }
}
