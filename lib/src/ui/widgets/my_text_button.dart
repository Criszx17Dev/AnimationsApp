import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text('Forget Password?',
          style: GoogleFonts.dellaRespira(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF4D57B1),
          )),
    );
  }
}
