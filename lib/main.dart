import 'package:flutter/material.dart';
import 'package:poc_mvvm_flutter/locator.dart';
import 'package:poc_mvvm_flutter/views/weather/weather_page.dart';

void main() {
  runApp(const WeatherPage());
  setupLocator();
}

// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
// import 'package:poc_mvvm_flutter/core/utils/navigation_service.dart';
// import 'package:poc_mvvm_flutter/locator.dart';
// import 'package:poc_mvvm_flutter/views/weather/weather_page.dart';
// import 'package:poc_mvvm_flutter/views/weather_detail/weather_detail_page.dart';



// void main() {
//   setupLocator();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       navigatorKey: GetIt.I<NavigationService>().navigatorKey,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => WeatherPage(),
//         '/weather_detail': (context) => WeatherDetailPage(),
//       },
//     );
//   }
// }
