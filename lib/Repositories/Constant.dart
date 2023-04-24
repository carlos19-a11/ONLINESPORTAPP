// ignore_for_file: file_names, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:onlinesports/Views/auth/login_screen.dart';

// este es nustro color primario
const KPrimaryColor = Color(0xFFACBDAA);

// haora creamos un color para el fondo
const KBGVColor = Color.fromARGB(251, 50, 143, 243);
const KBGSecunColor = Color.fromARGB(255, 55, 132, 227);

const KBGColor = Color(0xfffafafa);
const Color KBCcolor = Color(0xFFE74C3C);
const Kbcolors = Colors.transparent;

// color al texto

const KTextColor = Colors.grey;

const KDefaultPadding = 20.0;

const kWidthsizedBox = SizedBox(
  width: KDefaultPadding,
);

const sizedBox = SizedBox(
  height: KDefaultPadding,
);

const KHalfSizedBox = SizedBox(
  height: KDefaultPadding / 2,
);
const kHalfWidthsizedBox = SizedBox(
  height: KDefaultPadding / 2,
);

class Constant extends StatelessWidget {
  const Constant({
    super.key,
    required this.borderadius,
    required this.margin,
    required this.padding,
    required this.onTap,
    this.height = 50,
    this.width = 50,
    required this.child,
  });

  final BorderRadiusGeometry? borderadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: color ?? Colors.white,
      borderRadius: borderadius ?? BorderRadius.circular(8.0),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          margin: margin,
          padding: padding,
          height: height,
          width: width,
          child: child,
        ),
      ),
    );
  }
}
