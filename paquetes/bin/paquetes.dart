import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:paquetes/classes/request-response.dart';
import 'package:paquetes/paquetes.dart' as paquetes;

void main(List<String> arguments) {
  final url = Uri.parse('https://reqres.in/api/users?page=2');

  http.get(url).then((res) {
    final userResponse = userResponseFromJson(res.body);

    print('page: ${userResponse.page}');
  });

  print('Hello world: ${paquetes.calculate()}!');
}
