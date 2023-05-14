import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:onlinesports/Views/Home_Screen.dart';

import 'package:onlinesports/Views/auth/login_screen.dart';

const ip = "http://192.168.1.14:3000/api/";

void obtenerProductos() async {
  print('obtenerProductos');
  final url = Uri.parse('${ip}products/allProducts');

  // final url = Uri.parse('https://fakeapi.platzi.com/en/rest/products');
  //final body = {"email": email, "password": password};

  final headers = {'Content-Type': 'application/json'};

  final response = await http.get(url);
  if (response.statusCode == 200) {
    print(response);
    // final responseData = jsonDecode(response.body);
    Map<String, dynamic> jsonMap = json.decode(response.body);
    // String username = jsonMap['data']['username'];
    print(jsonMap);
    // print(responseData.data);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //       builder: (context) => HomeScreen(
    //             username: username,
    //           )),
    // );

    // print(response.body);
  } else {
    // print()
    print('Error: ${response.reasonPhrase}');
  }
}
