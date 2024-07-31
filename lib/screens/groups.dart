import 'package:flutter/material.dart';
import 'package:bharatsocials/broadcasts/env_chat.dart';
import 'package:bharatsocials/broadcasts/wmnemp_chat.dart';
import 'package:bharatsocials/broadcasts/siksha_chat.dart';
import 'package:bharatsocials/broadcasts/healthHyg_chat.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Domain Broadcast Page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EnvChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text('Sarva Siksha',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WmnEmpChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text('Women Empowerment',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SikshaChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text('Environment Sustainability',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HealthHygChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: const EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text('Health and Hygiene',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
