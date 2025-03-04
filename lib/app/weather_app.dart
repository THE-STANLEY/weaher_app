import 'package:flutter/material.dart';

import '../core/theme/theme.dart';
import '../features/weather/weather_screen.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: theme,
      home: WeatherScreen(),
    );
  }
}
