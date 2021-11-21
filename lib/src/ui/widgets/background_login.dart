import 'package:flutter/material.dart';

import 'my_lamp.dart';
import 'watch.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
              child: CustomPaint(painter: _DesignLoginBackground())),
          _MyTween(
              x: -0.73,
              y: -1,
              milliseconds: 1000,
              child: MyLamp(
                  size: MediaQuery.of(context).size.width * 0.28,
                  color: Colors.white70)),
          _MyTween(
              x: 0,
              y: -1,
              milliseconds: 1500,
              child: MyLamp(
                  size: MediaQuery.of(context).size.width * 0.19,
                  color: Colors.white38)),
          const _MyTween(
              x: 0.75, y: -0.7, milliseconds: 2000, child: Watch(size: 70))
        ],
      ),
    );
  }
}

class _DesignLoginBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect =
        Rect.fromCircle(center: const Offset(165, 150), radius: 180);

    const gradiente = LinearGradient(colors: [
      Color(0xFF4D57B1),
      Color(0xFF9EA5DF),
    ]);
    final pincel = Paint()..shader = gradiente.createShader(rect);
    pincel.color = const Color(0xFF4D57B1);
    pincel.style = PaintingStyle.fill;

    pincel.strokeWidth = 10.0;

    pincel.shader;

    final path = Path();
    path.lineTo(0, size.height * 0.55);
    path.quadraticBezierTo(size.width * 0.16, size.height * 0.43,
        size.width * 0.5, size.height * 0.45);
    path.quadraticBezierTo(
        size.width * 0.98, size.height * 0.47, size.width, size.height * 0.38);

    path.lineTo(size.width, 0);

    canvas.drawPath(path, pincel);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _MyTween extends StatelessWidget {
  const _MyTween(
      {Key? key,
      required this.milliseconds,
      required this.x,
      required this.child,
      required this.y})
      : super(key: key);
  final int milliseconds;
  final double x, y;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      curve: Curves.decelerate,
      duration: Duration(milliseconds: milliseconds),
      builder: (context, double value, child) =>
          Opacity(opacity: value, child: child),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: x),
        curve: Curves.decelerate,
        duration: Duration(milliseconds: milliseconds),
        builder: (context, double value, child) =>
            Align(alignment: Alignment(value, y), child: child),
        child: child,
      ),
    );
  }
}
