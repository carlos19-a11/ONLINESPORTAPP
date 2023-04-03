import 'package:flutter/material.dart';

import '../Widgets/text_frave.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const TextFrave(
              text: 'BIENVENIDOS',
              color: Colors.black87,
              fontWeight: FontWeight.w500),
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 450),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ButtonCustom(
                    title: 'SIGUENTE ',
                    onPressed: () =>
                        Navigator.of(context).pushNamed('LoginTenPage')),
              ],
            ),
          ),
        ));
  }
}

class _ButtonCustom extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;

  const _ButtonCustom({required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        onTap: onPressed,
        splashColor: const Color(0xffEFF3F6),
        child: Container(
          height: 55,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color(0xff2954DE)),
          child: Center(
              child: TextFrave(
                  text: title,
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
