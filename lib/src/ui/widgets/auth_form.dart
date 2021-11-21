import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                blurRadius: 8, color: Colors.black45, offset: Offset(0, 7))
          ]),
      height: MediaQuery.of(context).size.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _CustomTextField(title: 'Email or Phone number'),
          _CustomTextField(title: 'Password'),
        ],
      ),
    );
  }
}

class _CustomTextField extends StatelessWidget {
  const _CustomTextField({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primarySwatch: Colors.deepPurple),
      child: TextField(
        style: GoogleFonts.dellaRespira(),
        decoration: InputDecoration(
          hintText: title,
        ),
      ),
    );
  }
}
