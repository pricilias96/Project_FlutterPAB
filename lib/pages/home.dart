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
          // background top bar
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
          ),
          // menu
          Container(
            margin: EdgeInsets.only(left: 45, right: 45, top: 74),
            width: 271,
            height: 21,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Overview",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Budgeting",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 138,
                  top: 0,
                  child: Text(
                    "Investment",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned(
                  left: 63,
                  top: 0,
                  child: Text(
                    "Transaction",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 271,
                      height: 2,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff7ca5b7),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        right: 219,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 52,
                            height: 2,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff38369a),
                                width: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // balance
          Container(
            width: 334,
            height: 147,
            margin: EdgeInsets.only(left: 13, right: 13, top: 107),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "IDR",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "12,345,678.35",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/cash-plus.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        Text(
                          'Deposit',
                          style: GoogleFonts.sarala(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(width: 36),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/cash-minus.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        Text(
                          'Withdraw',
                          style: GoogleFonts.sarala(fontSize: 12),
                        ),
                      ],
                    ),
                    SizedBox(width: 36),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 38,
                              height: 38,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/cash-sync.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        Text(
                          'Transfer',
                          style: GoogleFonts.sarala(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          // bottom bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 360,
              height: 65,
              color: Color(0xff020887),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/home.svg',
                    width: 33,
                    height: 33,
                    color: Colors.white,
                  ),
                  SizedBox(width: 40),
                  SvgPicture.asset(
                    'assets/icons/invest.svg',
                    width: 29,
                    height: 29,
                    color: Colors.white,
                  ),
                  SizedBox(width: 40),
                  SvgPicture.asset(
                    'assets/icons/add.svg',
                    width: 48,
                    height: 48,
                    color: Colors.white,
                  ),
                  SizedBox(width: 40),
                  SvgPicture.asset(
                    'assets/icons/forum.svg',
                    width: 29,
                    height: 29,
                    color: Colors.white,
                  ),
                  SizedBox(width: 40),
                  SvgPicture.asset(
                    'assets/icons/profile.svg',
                    width: 29,
                    height: 29,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
