import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Category> categories = [];

  void addCategory(BuildContext context) {
    String newCategoryName = '';
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Category'),
          content: TextField(
            onChanged: (value) {
              newCategoryName = value;
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  categories.add(Category(name: newCategoryName, amount: 0));
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
          'Categories',
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
                  onTap: () => addCategory(context),
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
            ),
            Column(
              children: categories.map((category) {
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
                      Text(category.name,
                          style: GoogleFonts.alegreyaSans(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text('Amount: ${category.amount}'),
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

class Category {
  final String name;
  final int amount;

  Category({required this.name, required this.amount});
}
