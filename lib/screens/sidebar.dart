// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'badges.dart';
import 'settings.dart';
import 'profile.dart';
import 'stats.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
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
              children: const [
                Text(
                  'View Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.person),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          Divider(color: Colors.black), // Add a divider
          ListTile(
            title: Row(
              children: const [
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.settings),
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
          Divider(color: Colors.black), // Add a divider
          ListTile(
            title: Row(
              children: const [
                Text(
                  'Badges',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.badge),
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
          Divider(color: Colors.black), // Add a divider
          ListTile(
            title: Row(
              children: const [
                Text(
                  'Statistics',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.insert_chart),
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
          Divider(color: Colors.black), // Add a divider
          ListTile(
            title: Row(
              children: const [
                Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.logout, color: Colors.red),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
              // Add your logout logic here
            },
          ),
          Divider(color: Colors.black), // Add a divider
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
    );
  }
}