import 'package:flutter/material.dart';

class SarvaSiksha extends StatelessWidget {
  const SarvaSiksha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sarva Siksha Abhiyan'),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 25.0),
        backgroundColor: const Color(0xFFCDEBF7),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('This is the Sarva Siksha Abhiyan page'),
      ),
    );
  }
}
