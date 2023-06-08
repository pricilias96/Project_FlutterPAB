import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class Expense extends StatefulWidget {
  const Expense({Key? key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _createdController = TextEditingController();
  TextEditingController _accountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    _descriptionController.dispose();
    _createdController.dispose();
    _accountController.dispose();
    super.dispose();
  }

  void _selectDateTime() {
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(1900, 1, 1),
      maxTime: DateTime.now(),
      onConfirm: (date) {
        setState(() {
          String formattedDateTime =
              DateFormat('yyyy-MM-dd HH:mm').format(date);
          _createdController.text = formattedDateTime;
        });
      },
      currentTime: DateTime.now(),
    );
  }

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
                  Icon(Icons.file_upload, size: 15),
                  SizedBox(width: 5),
                  Text(
                    'Expense',
                    style: GoogleFonts.alegreyaSans(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // expense title
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Expense Title',
                  hintStyle: GoogleFonts.alegreyaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            // add categories
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
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
                        'Add Category',
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
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.text_fields, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        controller: _descriptionController,
                        decoration: InputDecoration(
                          hintText: 'Add description',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.date_range, color: Colors.grey),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: _selectDateTime,
                        child: IgnorePointer(
                          child: TextField(
                            controller: _createdController,
                            decoration: InputDecoration(
                              hintText: 'Created on',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.money, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        controller: _amountController,
                        decoration: InputDecoration(
                          hintText: 'Amount',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.account_balance, color: Colors.grey),
                    ),
                    Expanded(
                      child: TextField(
                        controller: _accountController,
                        decoration: InputDecoration(
                          hintText: 'From Account',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Lakukan operasi tambah pendapatan di sini
                        String title = _titleController.text;
                        String amount = _amountController.text;

                        // Reset semua controller setelah penambahan pendapatan
                        _titleController.clear();
                        _amountController.clear();
                        _descriptionController.clear();
                        _createdController.clear();
                        _accountController.clear();

                        // Tampilkan snackbar notifikasi
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Expense added!'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF58B09C),
                      ),
                      child: Text('Add Expense'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
