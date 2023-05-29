import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyWidget extends StatelessWidget {
  final String hola;
  const MyWidget({super.key, required this.hola});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
