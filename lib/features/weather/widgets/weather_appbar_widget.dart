import 'package:flutter/material.dart';

import '../../../core/theme/widgets/custom_container_widget.dart';

class WeatherAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WeatherAppBar({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Погода', style: theme.textTheme.titleLarge),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomContainer(
            decoration: BoxDecoration(
                color: const Color.fromARGB(38, 158, 158, 158),
                borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  label: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 20),
                      Text('Поиск по городам'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(130); // Высота AppBar + bottom
}
