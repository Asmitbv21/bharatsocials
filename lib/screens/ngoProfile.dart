import 'package:flutter/material.dart';
import 'home.dart';
import 'groups.dart';
import 'events.dart';

void main() {
  runApp(const VidyaNGOApp());
}

class VidyaNGOApp extends StatelessWidget {
  const VidyaNGOApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VidyaNGOScreen(),
    );
  }
}

class VidyaNGOScreen extends StatelessWidget {
  const VidyaNGOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vidya NGO'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
<<<<<<< HEAD
        backgroundColor: Color(0xFFCDEBF7),
=======
        backgroundColor: const Color.fromARGB(255, 125, 217, 239),
>>>>>>> ad665a015edefad88b5082be536766d6d8be5951
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ProfileBanner(), // Adding ProfileBanner at the top
            Stack(
              children: [
                // Background Container with Gradient and Border Radius
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: screenSize.width,
                    height: screenSize.height * 0.3,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 6, 255, 52),
                          Color.fromARGB(255, 230, 255, 3),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    // child: Image.asset(
                    // 'images/Designer.jpg',
                    // fit: BoxFit.cover,
                    // ),
                  ),
                ),
                const Positioned(
                  bottom: 15,
                  left: 10,
                  child: CircleAvatar(
                    radius: 75,
                    backgroundImage: AssetImage(
                      'images/Designer.jpg',
                    ),
                  ),
                ),
              ],
            ),
            // Container(
            //   padding: EdgeInsets.all(screenSize.width * 0.04),
            //   decoration: BoxDecoration(
            //     color: Color.fromARGB(255, 205, 205, 205),
            //     borderRadius: BorderRadius.circular(screenSize.width * 0.04),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.all(screenSize.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vidya NGO',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  Text(
                    'Location: Mumbai',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.04,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Container(
                    padding: EdgeInsets.all(screenSize.width * 0.04),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 205, 205, 205),
                      borderRadius:
                          BorderRadius.circular(screenSize.width * 0.04),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Text(
                          'Vidya is a dedicated NGO focused on transforming education in India. It aims to provide quality education and skill development to underprivileged children and youth. By fostering a supportive learning environment, Vidya strives to empower individuals and uplift communities through knowledge and opportunity.',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.04,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('More'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Container(
                    padding: EdgeInsets.all(screenSize.width * 0.04),
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius:
                          BorderRadius.circular(screenSize.width * 0.04),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Social',
                          style: TextStyle(
                            fontSize: screenSize.width * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.camera_alt_outlined),
                              color: Colors.pink,
                              iconSize: screenSize.width * 0.1,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.alternate_email_outlined),
                              color: Colors.blue,
                              iconSize: screenSize.width * 0.1,
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: const Icon(Icons.facebook),
                              color: Colors.blueAccent,
                              iconSize: screenSize.width * 0.1,
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Groups',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
              break;
            case 1:
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GroupsScreen()),
              );
              break;
            case 2:
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EventsScreen()),
              );
              break;
          }
        },
      ),
    );
  }
}

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 145, 248, 148),
            Color.fromARGB(255, 255, 255, 255),
          ],
        ),
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 48.0),
              child: Text(
                'Vidya NGO',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Location: Mumbai',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
