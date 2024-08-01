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
      child: Column(
        children: [
          Expanded(
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
                    color: Color.fromARGB(255, 243, 211, 74),
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                // Divider(color: Colors.black), // Add a divider
                ListTile(
                  tileColor:
                      Colors.red, // Add this to change the background color
                  title: Row(
                    children: const [
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white, // Change the text color to white
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.logout,
                          color:
                              Colors.white), // Change the icon color to white
                    ],
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Add your logout logic here
                  },
                ),

                ListTile(
                  title: Center(
                    child: Text(
                      'Version 1.0.0',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                      ),
                    ),
                  ),
                  enabled: false, // Make it non-tappable
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
