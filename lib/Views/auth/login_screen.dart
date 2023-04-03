import 'package:flutter/material.dart';
import 'package:onlinesports/Services/token.dart';
import 'package:onlinesports/Views/auth/signup_screen.dart';

import '../../Views/Home_Screen.dart';
import '../../Widgets/text_frave.dart';
import '../../Services/auth.dart';
import 'package:onlinesports/Widgets/login/header.dart';
import 'package:onlinesports/Widgets/login/logo.dart';
import 'package:onlinesports/Widgets/login/text_field_custom.dart';
import 'package:provider/provider.dart';

class LoginTenPage extends StatefulWidget {
  const LoginTenPage({Key? key}) : super(key: key);

  @override
  State<LoginTenPage> createState() => _LoginTenPageState();
}

class _LoginTenPageState extends State<LoginTenPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
        // _EmailAndPassword(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TextFieldCustom(
                  icono: Icons.mail_outline,
                  type: TextInputType.emailAddress,
                  controller: email,
                  texto: 'Correo electronico'),
              const SizedBox(height: 20),
              TextFieldCustom(
                  icono: Icons.visibility_off,
                  controller: password,
                  type: TextInputType.text,
                  pass: true,
                  texto: 'Contraseña'),
              _ForgotPassword(),

              // _BottonSignIn(
              //   email: email.text,
              //   password: password.text,
              // )
              Container(
                  margin: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(192, 125, 83, 50),
                      borderRadius: BorderRadius.circular(50)),
                  child: TextButton(
                      child: const TextFrave(
                          text: 'Iniciar Seción',
                          color: Colors.white,
                          fontSize: 18),
                      onPressed: () {
                        signIn(email.text, password.text, context);
                      }))
            ],
          ),
        ),
        const SizedBox(height: 40),
      ],
    ));
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
