import 'package:flutter/material.dart';

class HealthHyg extends StatelessWidget {
  final List<Map<String, String>> ngos = [
    {'name': 'Vidya NGO', 'location': 'Mumbai', 'color': '0xFFCCDBCC'},
    {'name': 'Asha NGO', 'location': 'Pune', 'color': '0xFFF4CCCC'},
    {'name': 'Disha Foundation', 'location': 'Satara', 'color': '0xFFD9D2E9'},
    {'name': 'Snehalaya', 'location': 'Pune', 'color': '0xFFE6E6E6'},
  ];

   HealthHyg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health and Hygiene'),
      ),
      body: ListView.builder(
        itemCount: ngos.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Color(int.parse(ngos[index]['color']!)),
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                ngos[index]['name']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Location: ${ngos[index]['location']}'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to profile screen
              },
            ),
          );
        },
      ),
    );
  }
}
