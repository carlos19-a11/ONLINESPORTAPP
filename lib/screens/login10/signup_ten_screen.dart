// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Widgets/text_frave.dart';
import '../../api/auht.dart';
import 'Widgets/header.dart';
import 'Widgets/logo.dart';
import 'Widgets/text_field_custom.dart';
import 'login_ten_screen.dart';

class SignUpTenPage extends StatelessWidget {
  const SignUpTenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.only(top: 0),
      physics: const BouncingScrollPhysics(),
      children: [
        Stack(
          children: [HeaderSignUp(), const LogoHeader()],
        ),
        _Titulo(),
        _TextField(),
      // _Botton()

        
      ],
    ));
  }
}

class _Botton extends StatelessWidget {

  final String username;
    const _Botton(
      {
  
      required this.username});
     



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: const Color.fromARGB(192, 125, 83, 50),
          borderRadius: BorderRadius.circular(50)),
      child: TextButton(
        child: const TextFrave(
            text: 'Registrarse', color: Colors.white, fontSize: 18),
        onPressed: () {
          signUp(username, '1', '2', '3', '4');
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class _TextField extends StatefulWidget {
  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  final username = TextEditingController();
  final password = TextEditingController();
  final passwordConfirma = TextEditingController();
  final email = TextEditingController();
  final direccion = TextEditingController();
  final telefono = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.person,
              type: TextInputType.text,
              controller: username,
              texto: 'Nombre de usuario'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              controller: email,
              texto: 'Dirección de correo electrónico'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              controller: password,
              pass: true,
              texto: 'Contraseña'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              type: TextInputType.text,
              pass: true,
              controller: passwordConfirma,
              texto: 'Confimar Contraseña'),
          const SizedBox(height: 20),
          TextFieldCustom(
              controller: telefono,
              icono: Icons.phone,
              type: TextInputType.number,
              texto: 'Telefoo'),
          const SizedBox(height: 20),
          TextFieldCustom(
              controller: direccion,
              icono: Icons.add_location_alt,
              type: TextInputType.number,
              texto: 'Dirección'),
          const SizedBox(height: 20),
      _Botton(username: username.text)
        ],
      ),
    );
  }
}

class _Titulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => LoginTenPage())),
            child: const TextFrave(
                text: 'Iniciar Seción',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey),
          ),
          const TextFrave(text: '/', fontSize: 25, color: Colors.grey),
          TextButton(
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SignUpTenPage())),
              child: const TextFrave(
                  text: 'Registrarse',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black))
        ],
      ),
    );
  }
}
