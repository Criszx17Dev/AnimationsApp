import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.085,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF4D57B1),
                    Color(0xFF9EA5DF),
                  ],
                )),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                elevation: 0,
                primary: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.zero),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.085,
              width: double.infinity,
              child: Center(
                child: Text('Login',
                    style: GoogleFonts.dellaRespira(
                        fontWeight: FontWeight.bold, fontSize: 20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
