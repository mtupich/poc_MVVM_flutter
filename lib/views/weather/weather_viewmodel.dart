import 'package:poc_mvvm_flutter/views/weather/weather_model.dart'; // Importa o modelo WeatherModel.
import 'package:poc_mvvm_flutter/views/weather/weather_repository.dart'; // Importa o repositório WeatherRepository.

class WeatherViewmodel {
  // Classe responsável por gerenciar os dados e estado do clima.

  List<WeatherModel>? model; // Lista de modelos de clima.
  WeatherRepository repository; // Instância do repositório para buscar dados climáticos.
  bool isLoading = false; // Indicador de carregamento.

  WeatherViewmodel(this.repository);
  // Construtor que inicializa a ViewModel com uma instância do repositório.

  Future<List<WeatherModel>?> fetchWeatherData() async {
    // Método que busca os dados climáticos.
    isLoading = true;
    // Define o estado de carregamento como verdadeiro.

    try {
      model = await repository.fetchWeatherData();
      // Chama o método do repositório para buscar os dados e armazena no modelo.
    } catch (error) {
      print('Erro: $error');
      // Em caso de erro, imprime o erro.
    } finally {
      isLoading = false;
      // Independentemente do resultado, define o estado de carregamento como falso.
    }

    return model;
    // Retorna o modelo de dados climáticos.
  }
}


