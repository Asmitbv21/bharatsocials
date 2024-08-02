
import 'package:flutter/material.dart';

class PasswordSecurityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password & Security"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Change password'),
              onTap: () {
                // Handle change password tap
              },
            ),
            ListTile(
              title: Text('Key pass'),
              onTap: () {
                // Handle key pass tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
