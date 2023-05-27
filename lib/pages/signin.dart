import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/signup.dart';
import '../components/my_textfield.dart';
import '../components/signin_button.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  // text editing controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 95),

            // Sign In
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: const Text(
                'Sign In',
                style: TextStyle(
                  fontFamily: 'Alegreya Sans',
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),

            const SizedBox(height: 47),

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
                controller: emailController,
                hintText: 'Input your email',
                obscureText: false,
              ),
            ),

            const SizedBox(height: 14),

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

            const SizedBox(height: 4),

            // Forgot Password
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  color: Color(0xFF38369A),
                ),
              ),
            ),

            const SizedBox(height: 45),

            // Button Sign In
            Align(
              alignment: Alignment.centerLeft,
              child: SignInButton(
                onTap: signUserIn,
              ),
            ),

            const SizedBox(height: 45),

            // Don't have an account?
            Align(
              alignment: Alignment.center,
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  fontFamily: 'Sarala',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            // Sign Up
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  // Navigasi ke halaman sign-up
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  'Sign Up',
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
