import 'package:flutter/material.dart';
import 'package:onlinesports/screens/login10/signup_ten_screen.dart';

import '../../Pages/Home_Screen.dart';
import '../../Widgets/text_frave.dart';
import 'Widgets/header.dart';
import 'Widgets/logo.dart';
import 'Widgets/text_field_custom.dart';

class LoginTenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.only(top: 0),
      physics: BouncingScrollPhysics(),
      children: [
        Stack(
          children: [HeaderLogin(), LogoHeader()],
        ),
        _Titulo(),
        const SizedBox(height: 40),
        _EmailAndPassword(),
        _ForgotPassword(),
        const SizedBox(height: 40),
        _BottonSignIn()
      ],
    ));
  }
}

class _BottonSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: const Color.fromARGB(192, 125, 83, 50),
            borderRadius: BorderRadius.circular(50)),
        child: TextButton(
            child: const TextFrave(
                text: 'Iniciar Seción', color: Colors.white, fontSize: 18),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            }));
  }
}

class _ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 25, top: 20),
      alignment: Alignment.centerRight,
      child: const TextFrave(text: '¿Olvidaste tu contraseña?'),
    );
  }
}

class _EmailAndPassword extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          TextFieldCustom(
              icono: Icons.mail_outline,
              type: TextInputType.emailAddress,
              controller: username,
              texto: 'Correo electronico'),
          const SizedBox(height: 20),
          TextFieldCustom(
              icono: Icons.visibility_off,
              controller: password,
              type: TextInputType.text,
              pass: true,
              texto: 'Contraseña'),
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
          const TextFrave(
              text: 'Iniciar Seción',
              fontSize: 25,
              fontWeight: FontWeight.bold),
          const TextFrave(text: '/', fontSize: 25, color: Colors.grey),
          TextButton(
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignUpTenPage())),
              child: const TextFrave(
                  text: 'Registrarse',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey))
        ],
      ),
    );
  }
}
