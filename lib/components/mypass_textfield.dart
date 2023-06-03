import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPassTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  bool? obscureText;

  MyPassTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.obscureText,
    GestureDetector? suffixIcon,
  }) : super(key: key);

  @override
  State<MyPassTextField> createState() => _MyPassTextFieldState();
}

class _MyPassTextFieldState extends State<MyPassTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23.0),
      child: Container(
        height: 34,
        width: 314,
        child: TextField(
          controller: widget.controller,
          obscureText: widget.obscureText ?? false,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  widget.obscureText = !widget.obscureText!;
                });
              },
              child: Icon(
                widget.obscureText! ? Icons.visibility_off : Icons.visibility,
                color: Colors.black,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: widget.hintText,
            hintStyle: GoogleFonts.hindMadurai(
              color: Color.fromRGBO(168, 168, 168, 1),
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
