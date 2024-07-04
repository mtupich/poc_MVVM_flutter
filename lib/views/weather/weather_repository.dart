import 'dart:convert'; 
import 'package:poc_mvvm_flutter/views/weather/weather_model.dart'; 
import 'package:http/http.dart' as http; 

class WeatherRepository {
  // Classe responsável por fazer as requisições de dados climáticos.

  Future<List<WeatherModel>> fetchWeatherData() async {
    // Método que faz a requisição dos dados climáticos.
    final response = await http.get(Uri.parse(
        'http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=e7692ee063c75a35a10fb4820a7cee79'));
    // Faz uma requisição GET para a URL fornecida.

    List<dynamic> jsonResponse = jsonDecode(response.body);
    // Decodifica a resposta JSON recebida da API.

    return jsonResponse.map((data) => WeatherModel.fromJson(data)).toList();
    // Converte a resposta JSON em uma lista de objetos WeatherModel.
  }
}

