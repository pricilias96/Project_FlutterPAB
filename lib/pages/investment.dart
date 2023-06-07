import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/add-transaction.dart';
import 'package:flutter_monvest/pages/forum.dart';
import 'package:flutter_monvest/pages/home.dart';
import 'package:flutter_monvest/pages/profile-page.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestPage extends StatefulWidget {
  const InvestPage({super.key});

  @override
  State<InvestPage> createState() => _InvestPageState();
}

class _InvestPageState extends State<InvestPage> {
  int _selectedItemIndex = 1;

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
                          'Investment',
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
            // cash flow
            SizedBox(height: 15),
            Container(
              width: 350,
              height: 110,
              padding: EdgeInsets.symmetric(vertical: 10),
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
                children: [
                  Text(
                    'Your Cash Flow :',
                    style: GoogleFonts.alegreyaSans(
                        fontWeight: FontWeight.w800, fontSize: 24),
                  ),
                  Spacer(),
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
                      SizedBox(width: 27),
                      Text(
                        "1,121,300.05",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    'Kondisi keuangan anda saat ini dalam status optimal!',
                    style: GoogleFonts.hindMadurai(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF58B09C)),
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              height: 130,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profil Resiko Anda :',
                        style: GoogleFonts.alegreyaSans(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                      Spacer(),
                      Text(
                        'Cermat, berpikir jangka menengah, profil\nresiko sedang, tujuan investasi stabil',
                        style: GoogleFonts.sarala(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            'Tes Profil Resiko',
                            style: GoogleFonts.sarala(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_forward, size: 15)
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Moderat',
                        style: GoogleFonts.alegreyaSans(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 5),
                      Icon(Icons.psychology, size: 55, color: Color(0xff020887))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              height: 40,
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Rekomendasi Instrumen Investasi',
                    style: GoogleFonts.sarala(
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward, size: 25)
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              "News & Articles",
              textAlign: TextAlign.center,
              style: GoogleFonts.alegreyaSans(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 15),
            // news 1
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/news1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    width: 350,
                    height: 40,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      'Suku Bunga Acuan Naik, Bagaimana Dampaknya Terhadap ...',
                      style: GoogleFonts.sarala(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // news 2
            Stack(
              children: [
                Container(
                  width: 350,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/news2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    width: 350,
                    height: 40,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 3,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Text(
                      'Persiapan Apa Saja Yang Perlu Dipersiapkan Untuk Dana ...',
                      style: GoogleFonts.sarala(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20)
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
