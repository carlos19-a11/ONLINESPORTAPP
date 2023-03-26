import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final IconData icono;
  final TextInputType type;
  final bool pass;
  final String texto;
  final TextEditingController controller;

  const TextFieldCustom(
      {Key? key,
      required this.icono,
      required this.type,
      this.pass = false,
      required this.controller,
      required this.texto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: type,
      controller: controller,
      obscureText: pass,
      decoration: InputDecoration(
        hintText: texto,
        filled: true,
        fillColor: Color(0xfff8f9fb),
        prefixIcon: Icon(icono, color: Colors.black),
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(192, 125, 83, 50),
            ),
            borderRadius: BorderRadius.circular(50)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(192, 125, 83, 50)),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
