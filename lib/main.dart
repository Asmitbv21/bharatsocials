// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/groups.dart';
import 'screens/events.dart';
import 'screens/sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(148, 239, 158, 204), // Update this line
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor:
              Color.fromARGB(255, 41, 50, 65), // A deep blue-grey background
          selectedItemColor: Color.fromARGB(
              255, 255, 215, 0), // A vibrant yellow-orange for selected items
          unselectedItemColor: Color.fromARGB(
              255, 153, 153, 153), // A medium grey for unselected items
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _children = const [
    HomeScreen(),
    GroupsScreen(),
    EventsScreen(),
  ];

  final List<String> _titles = const [
    'Bharat Socials',
    'Domain Broadcast Page',
    'Events',
  ];

  void onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/bg_images/appbackground.png'), // replace with your image name
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent, // Add this line
        appBar: AppBar(
          title: Text(_titles[_currentIndex]), // Update this line
          centerTitle: true,
        ),
        drawer: const Drawer(
          child: Sidebar(
            backgroundColor: Colors.transparent, // Add this line
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                children: _children,
              ),
            ),
            const SizedBox(height: 5), // Use SizedBox instead of Container
            BottomNavigationBar(
              onTap: onTabTapped,
              currentIndex: _currentIndex,
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
            ),
          ],
        ),
      ),
    );
  }
}
