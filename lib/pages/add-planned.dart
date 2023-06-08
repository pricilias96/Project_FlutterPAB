import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlannedPayments extends StatefulWidget {
  const PlannedPayments({Key? key});

  @override
  State<PlannedPayments> createState() => _PlannedPaymentsState();
}

class _PlannedPaymentsState extends State<PlannedPayments> {
  List<Planned> plans = [];

  void addPlanned(BuildContext context) {
    String newPlannedName = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Payments'),
          content: TextField(
            onChanged: (value) {
              newPlannedName = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  plans.add(Planned(name: newPlannedName, amount: 0));
                });
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Planned Payments',
          style: GoogleFonts.alegreyaSans(
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Color(0xFF58B09C),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFFEDF8FD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () => addPlanned(context),
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFCAF7E2),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.black),
                        SizedBox(width: 5),
                        Text(
                          'Add Payments',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: plans.map((planned) {
                return Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Text(planned.name,
                          style: GoogleFonts.alegreyaSans(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('Amount: ${planned.amount}'),
                    ],
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class Planned {
  final String name;
  final int amount;

  Planned({required this.name, required this.amount});
}
