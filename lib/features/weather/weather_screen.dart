import 'package:flutter/material.dart';

import '../../core/theme/widgets/custom_container_widget.dart';
import 'widgets/weather_appbar_widget.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: WeatherAppBar(theme: theme),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return CustomContainer(
                child: Placeholder(),
              );
            },
          ),
        ),
      ),
    );
  }
}
