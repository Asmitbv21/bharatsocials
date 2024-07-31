import 'package:flutter/material.dart';

class EnvSus extends StatelessWidget {
  const EnvSus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Environment and Sustainability'),
      ),
      body: const Center(
        child: Text('This is the Environment and Sustainability page'),
      ),
    );
  }
}