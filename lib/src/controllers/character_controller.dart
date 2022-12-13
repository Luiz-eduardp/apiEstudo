import 'dart:convert';

// Foundation
import 'package:flutter/foundation.dart';

// Http
import 'package:http/http.dart' as http;

// Model
import '../models/character_model.dart';

const String url = "https://api.npoint.io/fc3ed8f6342ef6fcfa3e";

List<Character> parseCharacter(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var characters = list.map((e) => Character.fromJson(e)).toList();
  return characters;
}

Future<List<Character>> fetchCharacters() async {
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parseCharacter, response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
