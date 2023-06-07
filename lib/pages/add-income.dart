import 'package:flutter/material.dart';
import 'package:flutter_monvest/components/my_textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF8FD),
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Color(0xFF58B09C),
          actions: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  Icon(Icons.file_download, size: 15),
                  SizedBox(width: 5),
                  Text(
                    'Income',
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ]),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Income Title',
                    hintStyle: GoogleFonts.alegreyaSans(
                        fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffcaf7e2),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Icon(Icons.add, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        'Add Category',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
