import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/add-transaction.dart';
import 'package:flutter_monvest/pages/forum.dart';
import 'package:flutter_monvest/pages/home.dart';
import 'package:flutter_monvest/pages/investment.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedItemIndex = 4;

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Container(
            width: 120,
            height: 120,
            child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png')),
          ),
          SizedBox(height: 15),
          Text(
            'Anna Aurelia',
            style: GoogleFonts.alegreyaSans(
                fontSize: 24, fontWeight: FontWeight.w900),
          ),
          Text(
            'Student',
            style: GoogleFonts.sarala(fontSize: 15),
          ),
          SizedBox(height: 5),
          Container(
            width: double.maxFinite,
            height: 70,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
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
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Posts',
                      style: GoogleFonts.sarala(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0',
                      style: GoogleFonts.sarala(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Following',
                      style: GoogleFonts.sarala(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '10',
                      style: GoogleFonts.sarala(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Followers',
                      style: GoogleFonts.sarala(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '14',
                      style: GoogleFonts.sarala(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: double.maxFinite,
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            child: Row(
              children: [
                Text(
                  'Account Settings',
                  style: GoogleFonts.sarala(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: double.maxFinite,
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            child: Row(
              children: [
                Text(
                  'Saved Post',
                  style: GoogleFonts.sarala(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: double.maxFinite,
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            child: Row(
              children: [
                Text(
                  'Help Center',
                  style: GoogleFonts.sarala(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: double.maxFinite,
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 15),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
            child: Row(
              children: [
                Text(
                  'Import / Export Data',
                  style: GoogleFonts.sarala(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ],
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
