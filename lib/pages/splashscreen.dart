import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/signin.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Fungsi ini akan dipanggil saat widget pertama kali dibuat
    _navigateToSignInScreen();
  }

  //Navigasi ke layar berikutnya (SignIn Screen)
  void _navigateToSignInScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignInScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(1.2472, -0.105),
              radius: 2.3426,
              colors: [
                Color(0xFF58AF9C),
                Color(0xFFB9E8CB),
                Color(0xFFCBF6E2),
                Color(0xFF7EBCDF),
                Color(0xFF5997B3),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "assets/images/logo.png",
                  width: 250,
                  height: 250,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  'Monvest - Money & Invest Manager',
                  style: TextStyle(
                    fontFamily: 'AlegrayaSans',
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Manage your finances, make smarter investments.',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Hind Madurai',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
