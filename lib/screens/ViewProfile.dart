import 'package:flutter/material.dart';

void main() {
  runApp(VidyaNGOApp());
}

class VidyaNGOApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VidyaNGOScreen(),
    );
  }
}

class VidyaNGOScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidya NGO'),
        backgroundColor: Colors.lightBlue[100],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'https://example.com/your-image.jpg', // Replace with your image URL or asset path
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://example.com/profile-picture.jpg', // Replace with your profile picture URL or asset path
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vidya NGO',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Location: Mumbai',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Vidya is a dedicated NGO focused on transforming education in India. It aims to provide quality education and skill development to underprivileged children and youth. By fostering a supportive learning environment, Vidya strives to empower individuals and uplift communities through knowledge and opportunity.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Social',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.camera_alt_outlined),
                        color: Colors.pink,
                        iconSize: 40,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.alternate_email_outlined),
                        color: Colors.blue,
                        iconSize: 40,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.facebook),
                        color: Colors.blueAccent,
                        iconSize: 40,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Group',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
        ],
      ),
    );
  }
}
