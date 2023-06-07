import 'package:flutter/material.dart';
import 'package:flutter_monvest/pages/forum.dart';
import 'package:flutter_monvest/pages/home.dart';
import 'package:flutter_monvest/pages/investment.dart';
import 'package:flutter_monvest/pages/profile-page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  int _selectedItemIndex = 2;

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
      body: Container(
        child: Column(
          children: [
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
                          'Add Your Transactions',
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
                )
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 3,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/cash-plus.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Deposit',
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/cash-minus.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Withdraw',
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/cash-sync.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Transfer',
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/categories.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Create\nCategories',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/bank.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Add Account',
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/urgent.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Add Planned\nPayment',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/flag-outline.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Add Goals',
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffcaf7e2),
                              ),
                            ),
                            SvgPicture.asset('assets/icons/reports.svg',
                                color: Color(0xff020887)),
                          ],
                        ),
                        SizedBox(height: 1),
                        Text(
                          'Reports',
                          style: GoogleFonts.sarala(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
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
