import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.title,
    this.height,
    this.width,
    this.colorsGradients,
    this.margin,
    this.padding,
    this.style,
    this.child,
    this.borderRadius,
  }) : super(key: key);
  final String title;
  final void Function()? onTap;
  final double? height, width;
  final List<Color>? colorsGradients;
  final EdgeInsetsGeometry? margin, padding;
  final TextStyle? style;
  final Widget? child;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
        clipBehavior: Clip.antiAlias,
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 35),
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
            gradient: LinearGradient(
                colors: colorsGradients ??
                    [
                      const Color(0xFF4D57B1),
                      const Color(0xFF9EA5DF),
                    ])),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            padding: padding ?? const EdgeInsets.symmetric(vertical: 20),
          ),
          child: child ??
              Center(
                child: FittedBox(
                    child: Text(title,
                        style: style ??
                            GoogleFonts.dellaRespira(
                                fontWeight: FontWeight.bold, fontSize: 20))),
              ),
        ));
  }
}
