import 'package:flutter/material.dart';
class ManageAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage account'),
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
              title: Text('Activate your account'),
              onTap: () {
                // Handle activate account
              },
            ),
            ListTile(
              title: Text('Deactivate your account'),
              onTap: () {
                // Handle deactivate account
              },
            ),
            ListTile(
              title: Text('Delete your account'),
              onTap: () {
                // Handle delete account
              },
            ),
          ],
        ),
      ),
    );
  }
}
