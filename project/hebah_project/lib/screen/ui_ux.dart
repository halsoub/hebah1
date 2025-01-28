import 'package:flutter/material.dart';

class SimpleLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI/UX Layout')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              color: Colors.blue[100],
              height: 100,
              child: Center(
                child: Text('Header Section'),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                color: Colors.orange[100],
                child: Center(
                  child: Text('Main Content'),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.green[100],
              height: 60,
              child: Center(
                child: Text('Footer Section'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
