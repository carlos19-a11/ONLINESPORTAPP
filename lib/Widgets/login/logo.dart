import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80,
      left: MediaQuery.of(context).size.width * 0.38,
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(60),
            boxShadow: const [
              BoxShadow(blurRadius: 10, color: Colors.black26)
            ]),
        child: const Align(
            alignment: Alignment.center,
            // ignore: prefer_const_constructors
            child: Text('OnlineSport',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black))),
      ),
    );
  }
}
