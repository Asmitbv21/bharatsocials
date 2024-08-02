import 'package:flutter/material.dart';
import 'package:bharatsocials/broadcasts/env_chat.dart';
import 'package:bharatsocials/broadcasts/wmnemp_chat.dart';
import 'package:bharatsocials/broadcasts/siksha_chat.dart';
import 'package:bharatsocials/broadcasts/healthHyg_chat.dart';

class GroupsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Domain Broadcast Page')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EnvChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Sarva Siksha',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WmnEmpChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Women Empowerment',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SikshaChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text('Environment Sustainability',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HealthHygChat()),
                );
              },
              child: Container(
                width: double.infinity, // Changed to double.infinity
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20), // Added margin
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.8), // Reduced opacity
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
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
