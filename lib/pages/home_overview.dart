import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 360,
            height: 179,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(-0.1931, -0.15),
                radius: 1.2762,
                colors: [
                  const Color(0xFFC6EBBE),
                  const Color(0xFF7EBCD7),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 23, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(width: 9),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: GoogleFonts.roboto(fontSize: 12),
                      ),
                      Text(
                        'Anna Aurelia',
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 149),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/search-rounded.svg',
                        width: 20,
                        height: 20,
                      ),
                      SvgPicture.asset(
                        'assets/icons/bell-notification.svg',
                        width: 20,
                        height: 20,
                      ),
                      SvgPicture.asset(
                        'assets/icons/setting-filled.svg',
                        width: 20,
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
