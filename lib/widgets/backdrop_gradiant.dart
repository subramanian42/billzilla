import 'package:flutter/material.dart';

class BackdropGradiant extends StatelessWidget {
  const BackdropGradiant({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        child: Stack(
          children: [
            Positioned(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,

              child: Blur(
                alignment: Alignment(-0.7, -0.35),
                color: Color(0XFF948DE6),
              ),
            ),
            Positioned(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: Blur(
                alignment: Alignment(0.75, -0.35),
                color: Color(0XFFA5E8EA),
              ),
            ),
            Positioned(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: Blur(
                alignment: Alignment(-0.025, -0.025),
                color: Color(0XFFA9E78D),
              ),
            ),
          ],
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
