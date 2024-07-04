import 'package:flutter/material.dart';

class WeatherDetailPage extends StatefulWidget {
  const WeatherDetailPage({super.key});

  @override
  State<WeatherDetailPage> createState() => _WeatherDetailPageState();
}

class _WeatherDetailPageState extends State<WeatherDetailPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _body(),
      )
    );
  }

  _body() {
    return Container(
      color: Colors.pink,
    );
  }
}