import 'package:flutter/material.dart';

class BackgroundLogin extends StatelessWidget {
  const BackgroundLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CustomPaint(
        painter: _DesignLoginBackground(),
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
