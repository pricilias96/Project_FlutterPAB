import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/signin.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/my_textfield.dart';
import '../components/mypass_textfield.dart';
import '../components/signup_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // text editing controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confpasswordController = TextEditingController();

  // sign user in method
  void signUserUp() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 95),

            // Sign Up
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Sign Up',
                style: GoogleFonts.alegreyaSans(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 47),

            // Name
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Name',
                style: GoogleFonts.sarala(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),

            // Name textfield
            Container(
              child: MyTextField(
                controller: nameController,
                hintText: 'Input your name',
                obscureText: false,
              ),
            ),

            const SizedBox(height: 15),

            // Email
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Email',
                style: GoogleFonts.sarala(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),

            // Email textfield
            Container(
              child: MyTextField(
                controller: emailController,
                hintText: 'Input your email',
                obscureText: false,
              ),
            ),

            const SizedBox(height: 15),

            // Phone Number
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Phone Number',
                style: GoogleFonts.sarala(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),

            // Phone Number textfield
            Container(
              child: MyTextField(
                controller: phoneController,
                hintText: 'Input your phone number',
                obscureText: false,
              ),
            ),

            const SizedBox(height: 15),

            // Password
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Password',
                style: GoogleFonts.sarala(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),

            // Password textfield
            Container(
              child: MyPassTextField(
                controller: passwordController,
                hintText: 'Input your password',
                obscureText: true,
              ),
            ),

            const SizedBox(height: 15),

            // Confirm Password
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Confirm Password',
                style: GoogleFonts.sarala(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),

            // Confirm Password textfield
            Container(
              child: MyPassTextField(
                controller: confpasswordController,
                hintText: 'Confirm your password',
                obscureText: true,
              ),
            ),

            const SizedBox(height: 42),

            // Button Sign Up
            Align(
              alignment: Alignment.centerLeft,
              child: SignUpButton(
                onTap: signUserUp,
              ),
            ),

            const SizedBox(height: 41),

            // Already have an account?
            Align(
              alignment: Alignment.center,
              child: Text(
                "Already have an account?",
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            // Sign In
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke halaman sign-in
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInScreen()),
                  );
                },
                child: Text(
                  'Sign In',
                  style: GoogleFonts.sarala(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Color(0xFF38369A),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
