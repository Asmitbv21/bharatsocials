// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'badges.dart';
import 'settings.dart';
import 'profile.dart';
import 'stats.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key, required Color backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Bharat Socials',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'bharatsocials@example.com',
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 60.0),
              ),
              decoration: BoxDecoration(
                color: Color(0xFFCDEBF7), // Change this to your desired color
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.person),
                  Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            Divider(color: const Color.fromARGB(0, 0, 0, 0)), // Add a divider
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.settings),
                  Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()),
                );
              },
            ),
            Divider(color: const Color.fromARGB(0, 0, 0, 0)), // Add a divider
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.badge),
                  Text(
                    'Badges',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BadgesScreen()),
                );
              },
            ),
            Divider(color: const Color.fromARGB(0, 0, 0, 0)), // Add a divider
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.insert_chart),
                  Text(
                    'Statistics',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatsScreen()),
                );
              },
            ),
            Divider(color: const Color.fromARGB(0, 0, 0, 0)), // Add a divider
            ListTile(
              title: Row(
                children: [
                  Icon(Icons.logout, color: Colors.red),
                  Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                // Add your logout logic here
              },
            ),
            Divider(color: const Color.fromARGB(0, 0, 0, 0)), // Add a divider
            ListTile(
              title: Center(
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              enabled: false, // Make it non-tappable
            ),
          ],
        ),
      ),
    );
  }
}