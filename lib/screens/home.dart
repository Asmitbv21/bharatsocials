import 'package:flutter/material.dart';
import 'dart:async';

import 'package:bharatsocials/domains/envSus.dart';
import 'package:bharatsocials/domains/healthHyg.dart';
import 'package:bharatsocials/domains/sarvaSiksha.dart';
import 'package:bharatsocials/domains/womenEmp.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  late ScrollController _scrollController;
  late Timer _bannerTimer;
  int currentPage = 0;
  final int bannerCount = 4;

  // Placeholder data for banners and events
  late List<String> bannerImages;
  List<String> events = [
    "Event 1: Health Camp on 5th Aug",
    "Event 2: Tree Plantation on 12th Aug",
    "Event 3: Education Workshop on 20th Aug",
    "Event 4: Women's Empowerment Session on 25th Aug",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentPage);
    _scrollController = ScrollController();
    _startScrolling();

    // Initialize banner images in the initState
    bannerImages = List.generate(bannerCount, (index) => 'https://via.placeholder.com/300x150?text=Banner+$index');

    // Set up a timer to auto-scroll the banners
    _bannerTimer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      if (_pageController.hasClients) {
        if (currentPage < bannerCount - 1) {
          currentPage++;
        } else {
          currentPage = 0;
        }
        _pageController.animateToPage(
          currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  void _startScrolling() {
    Future.delayed(Duration(seconds: 2), () {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: Duration(seconds: 10),
          curve: Curves.linear,
        ).then((_) {
          if (_scrollController.hasClients) {
            _scrollController.jumpTo(_scrollController.position.minScrollExtent);
            _startScrolling();
          }
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _scrollController.dispose();
    _bannerTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Banner
          Container(
            height: 225,
            child: PageView.builder(
              controller: _pageController,
              itemCount: bannerImages.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(bannerImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          // Marquee
          Container(
            color: Color.fromARGB(255, 198, 238, 247),
            height: 50,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: events.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Center(
                    child: Text(
                      events[index],
                      style: TextStyle(color: const Color.fromARGB(255, 248, 68, 68), fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SarvaSiksha()),
                  );
                },
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.school, size: 60, color: Colors.blue),
                      Text('Sarva Siksha', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WomenEmp()),
                  );
                },
                child: Container(
                  width: 140,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.woman, size: 60, color: Colors.purple),
                      Text('     Women ', style: TextStyle(fontSize: 18)),
                      Text(' Empowerment ', style: TextStyle(fontSize: 18)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => EnvSus()),
                        );
                      },
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.eco, size: 60, color: Colors.green),
                            Text('    Environment ', style: TextStyle(fontSize: 18)),
                            Text('   Sustainability', style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HealthHyg()),
                        );
                      },
                      child: Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.medical_services, size: 60, color: Colors.red),
                            Text('   Health & ', style: TextStyle(fontSize: 18)),
                            Text('Hygiene', style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
