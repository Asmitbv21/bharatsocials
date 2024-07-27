import 'package:flutter/material.dart';

class SarvaSiksha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sarva Siksha Abhiyan'),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25.0),
        backgroundColor: Color(0xFFCDEBF7),
        centerTitle: true,
      ),
      body: Center(
        child: Text('This is the Sarva Siksha Abhiyan page'),
      ),
    );
  }
}
