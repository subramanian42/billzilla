import 'package:flutter/material.dart';

class BackdropGradiant extends StatelessWidget {
  const BackdropGradiant({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Positioned(
            width: -50,
            height: -50,
            child: Blur(
              // alignment: Alignment(-0.7, -0.35),
              color: Color(0XFF948DE6),
            ),
          ),
          // Positioned(
          //   child: Blur(
          //     alignment: Alignment(-0.5, -0.5),
          //     color: Color(0XFFA9E78D),
          //   ),
          // ),
          // Blur(alignment: Alignment(-0.7, -0.35), color: Color(0XFF948DE6)),
        ],
      ),
    );
  }
}

class Blur extends StatelessWidget {
  const Blur({
    super.key,
    //  required this.alignment,
    required this.color,
  });
  // final Alignment alignment;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 642,
      height: 642,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            // center: alignment,
            radius: 0.75,
            colors: <Color>[color, color.withValues(alpha: 0.0)],
            stops: <double>[0.0, 1],
          ),
        ),
      ),
    );
  }
}
