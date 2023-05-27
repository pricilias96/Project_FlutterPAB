import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final Function()? onTap;

  const SignInButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.symmetric(horizontal: 23),
        decoration: BoxDecoration(
          color: Color(0xFF38369A),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Sign In",
            style: TextStyle(
              fontFamily: 'Sarala',
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
