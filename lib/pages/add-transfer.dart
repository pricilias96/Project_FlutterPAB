import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:intl/intl.dart';

class Transfer extends StatefulWidget {
  const Transfer({Key? key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _createdController = TextEditingController();
  TextEditingController _fromaccountController = TextEditingController();
  TextEditingController _toaccountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    _descriptionController.dispose();
    _createdController.dispose();
    _fromaccountController.dispose();
    _toaccountController.dispose();
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
                  Icon(Icons.currency_exchange, size: 15),
                  SizedBox(width: 5),
                  Text(
                    'Transfer',
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
            // Transfer title
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: 'Transfer Title',
                  hintStyle: GoogleFonts.alegreyaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
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
                        controller: _fromaccountController,
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
                        controller: _toaccountController,
                        decoration: InputDecoration(
                          hintText: 'To Account',
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
                        _fromaccountController.clear();
                        _toaccountController.clear();

                        // Tampilkan snackbar notifikasi
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Transfer added!'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF58B09C),
                      ),
                      child: Text('Add Transfer'),
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
