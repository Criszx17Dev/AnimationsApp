import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '/src/ui/widgets/background.dart';
import '/src/ui/widgets/my_lamp.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const BackgroundLogin(),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 1000),
              builder: (context, double value, child) {
                return Align(
                    alignment: const Alignment(-0.75, -1),
                    child: Opacity(
                        opacity: value,
                        child: const MyLamp(size: 110, color: Colors.white70)));
              },
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 1500),
              builder: (context, double value, child) {
                return Align(
                    alignment: const Alignment(0, -1),
                    child: Opacity(
                        opacity: value,
                        child: const MyLamp(size: 75, color: Colors.white38)));
              },
            ),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: const Duration(milliseconds: 2000),
              builder: (context, double value, child) {
                return Align(
                    alignment: const Alignment(0.7, -0.8),
                    child: Opacity(
                      opacity: value,
                      child: const _Watch(size: 70),
                    ));
              },
            ),
            Align(
              alignment: const Alignment(0, -0.4),
              child: Text(
                'Login',
                style: GoogleFonts.kaushanScript(
                    color: Colors.white, fontSize: 35),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _Watch extends StatelessWidget {
  const _Watch({Key? key, required this.size}) : super(key: key);
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
    );
  }
}
