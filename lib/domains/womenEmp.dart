import 'package:flutter/material.dart';

class WomenEmp extends StatelessWidget {
  const WomenEmp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Women Empowerment'),
      ),
      body: const Center(
        child: Text('This is the Women Empowerment page'),
      ),
    );
  }
}