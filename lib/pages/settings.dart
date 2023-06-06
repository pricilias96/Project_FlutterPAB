import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFEDF8FD),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey)),
              child: Row(
                children: [
                  Text('Export to CSV'),
                  Spacer(),
                  Icon(Icons.backup_table)
                ],
              ),
            )
          ]),
        ));
  }
}
