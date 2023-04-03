// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../Widgets/text_frave.dart';
import '../../Services/auth.dart';
import 'package:onlinesports/Widgets/login/header.dart';
import 'package:onlinesports/Widgets/login/logo.dart';
import 'package:onlinesports/Widgets/login/text_field_custom.dart';
import 'login_screen.dart';

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
  final String email;
  final String username;
  final String password;
  final String phone;
  final String adressfisical;
  // @override
  // StatelessElement createElement() {
  //   // TODO: implement createElement

  //   return super.createElement();
  // }

  const _Botton(
      {required this.email,
      required this.username,
      required this.password,
      required this.phone,
      required this.adressfisical});

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
          signUp(email, username, password, phone, adressfisical, context);
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
  // final passwordConfirma = TextEditingController();
  final email = TextEditingController();
  final adressfisical = TextEditingController();
  final phone = TextEditingController();

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
          // TextFieldCustom(
          //     icono: Icons.visibility_off,
          //     type: TextInputType.text,
          //     pass: true,
          //     controller: passwordConfirma,
          //     texto: 'Confimar Contraseña'),
          // const SizedBox(height: 20),
          TextFieldCustom(
              controller: phone,
              icono: Icons.phone,
              type: TextInputType.number,
              texto: 'Telefo'),
          const SizedBox(height: 20),
          TextFieldCustom(
              controller: adressfisical,
              icono: Icons.add_location_alt,
              type: TextInputType.number,
              texto: 'Dirección'),
          const SizedBox(height: 20),
          _Botton(
              email: email.text,
              username: username.text,
              password: password.text,
              phone: phone.text,
              adressfisical: adressfisical.text)
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