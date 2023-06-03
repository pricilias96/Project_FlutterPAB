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
          ),
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
          )
        ],
      ),
    );
  }
}
