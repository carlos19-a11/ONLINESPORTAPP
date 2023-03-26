import 'dart:convert';
import 'package:http/http.dart' as http;

void signUp(email, username, password, phone, adressfisical) async {
  print(username);
  final url = Uri.parse('http://192.168.1.10:3000/api/auth/signup');
  final body = {
    "username": "samuel",
    "phone": 15484848,
    "address_fisical": "Cra ",
    "email": "samuel@gmail.com",
    "password": "3107998846"
  };
  final headers = {'Content-Type': 'application/json'};

  final response =
      await http.post(url, body: jsonEncode(body), headers: headers);
  if (response.statusCode == 200) {
    print(response.body);
  } else {
    // print()
    print('Error: ${response.reasonPhrase}');
  }
}
