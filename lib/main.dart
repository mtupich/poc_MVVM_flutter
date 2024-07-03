import 'package:flutter/material.dart';
import 'package:poc_mvvm_flutter/locator.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_page.dart';

void main() {
  runApp(const WeatherPage());
  setupLocator();
}

