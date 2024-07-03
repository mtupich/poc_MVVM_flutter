import 'package:poc_mvvm_flutter/views/weather/weather_model.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_repository.dart';

class WeatherViewmodel {
  List<WeatherModel>? model;
  WeatherRepository repository;
  bool isLoading = false;

  WeatherViewmodel(this.repository);

  Future<List<WeatherModel>?> fetchWeatherData() async {
    isLoading = true;

    try {
      model = await repository.fetchWeatherData();
    } catch (error) {
      print('Erro: $error');
    } finally {
      isLoading = false;
    }

    return model;
  }
}


