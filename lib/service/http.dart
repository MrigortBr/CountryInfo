import 'dart:convert';
import 'package:country_info/service/country.dart';
import 'package:http/http.dart' as http;

Future<Country> fetchCountry(String text) async {
  const String baseUrl = 'http://192.168.255.108:3000';
  final response = await http.get(Uri.parse('$baseUrl/$text'));

  if (response.statusCode == 200) {
    final jsonMap = json.decode(response.body);
    return Country.fromJson(jsonMap);
  } else {
    throw Exception('Failed to fetch country');
  }
}
