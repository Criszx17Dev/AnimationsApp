import 'package:flutter/material.dart';

import '/src/ui/widgets/auth_form.dart';
import '../widgets/background_login.dart';
import '/src/ui/widgets/custom_button.dart';
import '/src/ui/widgets/my_text_button.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const BackgroundLogin(),
            Align(
                alignment: const Alignment(0, -0.35),
                child: Text('Login',
                    style: GoogleFonts.kaushanScript(
                        color: Colors.white, fontSize: 35))),
            const Align(alignment: Alignment(0, 0.95), child: _MyForm()),
          ],
        ),
      ),
    );
  }
}

class _MyForm extends StatelessWidget {
  const _MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          AuthForm(),
          SizedBox(height: 35),
          CustomButton(),
          SizedBox(height: 35),
          MyTextButton(),
        ],
      ),
    );
  }
}
