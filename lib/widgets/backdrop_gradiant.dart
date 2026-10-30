import 'package:flutter/material.dart';

class BackdropGradiant extends StatelessWidget {
  const BackdropGradiant({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.7, -0.35),
            radius: 0.75,
            colors: <Color>[
              Color(0XFF948DE6),
              Color(0XFF948DE6).withValues(alpha: 0.0),
            ],
            stops: <double>[0.0, 1],
          ),
        ),
      ),
    );
  }
}

class Blur extends StatelessWidget {
  const Blur({super.key, required this.alignment, required this.color});
  final Alignment alignment;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: alignment,
          radius: 0.75,
          colors: <Color>[color, color.withValues(alpha: 0.0)],
          stops: <double>[0.0, 1],
        ),
      ),
    );
  }
}
