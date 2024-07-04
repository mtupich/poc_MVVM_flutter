import 'package:get_it/get_it.dart';
import 'package:poc_mvvm_flutter/core/utils/navigation_service.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_repository.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_viewmodel.dart';

void setupLocator() {
  GetIt.instance.registerLazySingleton<WeatherRepository>(() => WeatherRepository());
  GetIt.instance.registerFactory<WeatherViewmodel>(() => WeatherViewmodel(GetIt.instance<WeatherRepository>()));
  GetIt.I.registerLazySingleton<NavigationService>(() => NavigationServiceImpl());
}