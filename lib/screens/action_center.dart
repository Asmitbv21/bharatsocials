import 'package:bharatsocials/screens/manage_acc.dart';
import 'package:bharatsocials/screens/password.dart';
import 'package:flutter/material.dart';
class AccountCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Center"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountCenterItem(
              title: "Manage account",
              onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageAccountScreen()),
                );
              },
            ),
            AccountCenterItem(
              title: "Password & Security",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PasswordSecurityPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AccountCenterItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  AccountCenterItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
