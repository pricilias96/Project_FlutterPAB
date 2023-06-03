import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home.dart';

class SignInButton extends StatelessWidget {
  final Function()? onTap;

  const SignInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate ke home page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 23),
        decoration: BoxDecoration(
          color: Color(0xFF38369A),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "Sign In",
            style: GoogleFonts.sarala(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
