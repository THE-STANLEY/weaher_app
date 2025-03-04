import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.child,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
  });

  final Widget? child;
  final Color? color;
  final Decoration? decoration;
  final Decoration? foregroundDecoration;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    Widget? current = child;

    if (decoration != null) {
      current = DecoratedBox(decoration: decoration!, child: current);
    }

    if (color != null) {
      current = ColoredBox(color: color!, child: current);
    }

    if (constraints != null) {
      current = ConstrainedBox(constraints: constraints!, child: current);
    }
    return current!;
  }
}
