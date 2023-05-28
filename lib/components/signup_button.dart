import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/signin.dart';

class SignUpButton extends StatelessWidget {
  final Function()? onTap;

  const SignUpButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate ke sign-in page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInScreen()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 23),
        decoration: BoxDecoration(
          color: Color(0xFF58B09C),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Sign Up",
            style: GoogleFonts.sarala(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
