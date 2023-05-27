import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/signin.dart';
import '../components/my_textfield.dart';
import '../components/signup_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Alegreya Sans',
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 47),

            // Name
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Name',
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                ),
              ),
            ),

            // Name textfield
            Container(
              child: MyTextField(
                controller: emailController,
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
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                ),
              ),
            ),

            // Email textfield
            Container(
              child: MyTextField(
                controller: passwordController,
                hintText: 'Input your email',
                obscureText: false,
              ),
            ),

            const SizedBox(height: 15),

            // Phone Number
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Email',
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                ),
              ),
            ),

            // Phone Number textfield
            Container(
              child: MyTextField(
                controller: passwordController,
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
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                ),
              ),
            ),

            // Password textfield
            Container(
              child: MyTextField(
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
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                ),
              ),
            ),

            // Confirm Password textfield
            Container(
              child: MyTextField(
                controller: passwordController,
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
                  style: TextStyle(
                    fontFamily: 'Sarala',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    color: Color(0xFF58B09C),
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
