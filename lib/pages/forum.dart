import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/transaction.dart';
import 'package:flutter_monvest/pages/home.dart';
import 'package:flutter_monvest/pages/investment.dart';
import 'package:flutter_monvest/pages/profile-page.dart';
import 'package:google_fonts/google_fonts.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({super.key});

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  int _selectedItemIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF8FD),
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(Icons.home, 0),
          buildNavBarItem(Icons.addchart_outlined, 1),
          buildNavBarItem(Icons.add_circle, 2),
          buildNavBarItem(Icons.forum_outlined, 3),
          buildNavBarItem(Icons.account_circle_outlined, 4),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // top bar
            Stack(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    gradient: RadialGradient(
                      center: Alignment(0.9, -0.2652),
                      radius: 3,
                      colors: [
                        Color(0xFF58B09C),
                        Color(0xFFC6EBBE),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/logo.png')),
                        SizedBox(width: 5),
                        Text(
                          'Monvest Community',
                          style: GoogleFonts.sarala(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.rate_review,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.notifications_sharp,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // post
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // post 1
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 2
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 3
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 4
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 5
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 6
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 7
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
                // post 8
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.maxFinite,
                  height: 110,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.png'),
                            radius: 13,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              Text(
                                'Username ',
                                style: GoogleFonts.sarala(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '| Time Added',
                                style: GoogleFonts.sarala(fontSize: 11),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, size: 15)
                        ],
                      ),
                      Spacer(),
                      Text(
                        'Description',
                        style: GoogleFonts.hindMadurai(fontSize: 12),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(Icons.favorite_border, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          SizedBox(width: 15),
                          Icon(Icons.mode_comment_outlined, size: 15),
                          SizedBox(width: 5),
                          Text('0',
                              style: GoogleFonts.hindMadurai(fontSize: 10)),
                          Spacer(),
                          Icon(Icons.bookmark_border, size: 15)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index) {
    if (index == 0) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Container(
          color: Color(0xff020887),
          width: MediaQuery.of(context).size.width / 5,
          height: 65,
          child: Icon(
            icon,
            size: 30,
            color:
                index == _selectedItemIndex ? Color(0xFF58B09C) : Colors.white,
          ),
        ),
      );
    } else if (index == 1) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InvestPage()),
          );
        },
        child: Container(
          color: Color(0xff020887),
          width: MediaQuery.of(context).size.width / 5,
          height: 65,
          child: Icon(
            icon,
            size: 30,
            color:
                index == _selectedItemIndex ? Color(0xFF58B09C) : Colors.white,
          ),
        ),
      );
    } else if (index == 2) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTransaction()),
          );
        },
        child: Container(
          color: Color(0xff020887),
          width: MediaQuery.of(context).size.width / 5,
          height: 65,
          child: Icon(
            icon,
            size: 30,
            color:
                index == _selectedItemIndex ? Color(0xFF58B09C) : Colors.white,
          ),
        ),
      );
    } else if (index == 3) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ForumPage()),
          );
        },
        child: Container(
          color: Color(0xff020887),
          width: MediaQuery.of(context).size.width / 5,
          height: 65,
          child: Icon(
            icon,
            size: 30,
            color:
                index == _selectedItemIndex ? Color(0xFF58B09C) : Colors.white,
          ),
        ),
      );
    } else if (index == 4) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
        child: Container(
          color: Color(0xff020887),
          width: MediaQuery.of(context).size.width / 5,
          height: 65,
          child: Icon(
            icon,
            size: 30,
            color:
                index == _selectedItemIndex ? Color(0xFF58B09C) : Colors.white,
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          setState(() {
            _selectedItemIndex = index;
          });
        },
        child: Container(
          color: Color(0xff020887),
          width: MediaQuery.of(context).size.width / 5,
          height: 65,
          child: Icon(
            icon,
            size: 30,
            color:
                index == _selectedItemIndex ? Color(0xFF58B09C) : Colors.white,
          ),
        ),
      );
    }
  }
}
