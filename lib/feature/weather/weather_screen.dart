import 'package:flutter/material.dart';

import 'widgets/weather_appbar_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: WeatherAppBar(theme: theme),
    );
  }
}
