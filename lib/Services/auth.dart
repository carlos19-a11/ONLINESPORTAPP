// ignore_for_file: use_build_context_synchronously, prefer_const_constructors, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:onlinesports/Views/Home_Screen.dart';

import 'package:onlinesports/Views/auth/login_screen.dart';

const ip = "http://192.168.1.16:3000/api/";

void signUp(email, username, password, phone, adressfisical,
    BuildContext context) async {
  print(email);
  print(username);
  print(password);
  print(phone);
  print(adressfisical);
  final url = Uri.parse('${ip}auth/signup');
  final body = {
    "username": username,
    "phone": phone,
    "address_fisical": adressfisical,
    "email": email,
    "password": password
  };
  print(url);

  final headers = {'Content-Type': 'application/json'};

  final response =
      await http.post(url, body: jsonEncode(body), headers: headers);
  if (response.statusCode == 200) {
    final responseData = jsonDecode(response.body);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginTenPage()),
    );

    print(response.body);
  } else {
    // print()
    print('Error: ${response.reasonPhrase}');
  }
}

void signIn(email, password, BuildContext context) async {
  final url = Uri.parse('${ip}auth/signin');
  final body = {"email": email, "password": password};

  final headers = {'Content-Type': 'application/json'};

  final response =
      await http.post(url, body: jsonEncode(body), headers: headers);
  if (response.statusCode == 200) {
    // final responseData = jsonDecode(response.body);
    Map<String, dynamic> jsonMap = json.decode(response.body);
    String username = jsonMap['data']['username'];
    print(username);
    // print(responseData.data);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => HomeScreen(
                username: username,
              )),
    );

    print(response.body);
  } else {
    // print()
    print('Error: ${response.reasonPhrase}');
  }
}
