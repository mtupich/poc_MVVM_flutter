import 'dart:convert';
import 'package:poc_mvvm_flutter/views/weather/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherRepository {
  Future<List<WeatherModel>> fetchWeatherData() async {
    final response = await http.get(Uri.parse(
        'http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=e7692ee063c75a35a10fb4820a7cee79'));
      List<dynamic> jsonResponse = jsonDecode(response.body);
      return jsonResponse.map((data) => WeatherModel.fromJson(data)).toList();
  }
}

