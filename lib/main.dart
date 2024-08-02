// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/groups.dart';
import 'screens/events.dart';
import 'screens/sidebar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _children = [
    HomeScreen(),
    GroupsScreen(),
    EventsScreen(),
  ];

  void onTabTapped(int index) {
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOCIALS'),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 25.0,fontWeight:FontWeight.bold),
        backgroundColor: Color(0xFFCDEBF7),
        centerTitle: true,
      ),
      drawer: Sidebar(),
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
          Container(
            height: 5,
            color: Colors.grey[300],
          ),
          BottomNavigationBar(
            onTap: onTabTapped,
            selectedItemColor: Color.fromARGB(255, 99, 205, 247),
           
            currentIndex: _currentIndex,
            items: [
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
    );
  }
}
