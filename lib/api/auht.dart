import 'dart:convert';
import 'package:http/http.dart' as http;

void signUp(email, username, password, phone, adressfisical) async {
  print(email);
  print('username');
  // final url = Uri.parse('http://192.168.1.10:3000/api/auth/signup');
  // final body = {
  //   "username": "sa12muel1",
  //   "phone": 154848481,
  //   "address_fisical": "Cra 1",
  //   "email": "sa1muel12@gmail.com",
  //   "password": "31079988461"
  // };
  // final headers = {'Content-Type': 'application/json'};

  // final response =
  //     await http.post(url, body: jsonEncode(body), headers: headers);
  // if (response.statusCode == 200) {
  //   print(response.body);
  // } else {
  //   // print()
  //   print('Error: ${response.reasonPhrase}');
  // }
}
