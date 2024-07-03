import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  @override
  Future get(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print('passei aqui sucesso');
      return json.decode(response.body);
    } else {
      print('passei aqui falha');
      throw Exception('Failed to load data');
    }
  }
}