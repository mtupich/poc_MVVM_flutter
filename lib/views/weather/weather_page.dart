import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:poc_mvvm_flutter/core/utils/navigation_service.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_model.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_viewmodel.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  final WeatherViewmodel viewmodel = GetIt.instance<WeatherViewmodel>();
  final navigationService = GetIt.I<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weather Page'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            navigationService.navigateTo('weather_detail/weather_detail_page.dart');
          },
          child: Icon(Icons.account_circle),  
        ),
        body: FutureBuilder<List<WeatherModel>?>(
          future: viewmodel.fetchWeatherData(), // Chama a função assíncrona para buscar os dados
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator()); // Centraliza o indicador de carregamento
            } else if (snapshot.hasError) {
              return Center(child: Text('Erro: ${snapshot.error}')); // Centraliza a mensagem de erro
            } else if (snapshot.hasData) {
              return Center(child: Text(snapshot.data!.first.text ?? 'teste')); // Centraliza os dados
            } else {
              return Center(child: Text('Nenhum dado encontrado')); // Centraliza a mensagem padrão
            }
          },
        ),
      ),
    );
  }
}
