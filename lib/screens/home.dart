import 'package:flutter/material.dart';
import 'dart:async';

import 'package:bharatsocials/domains/envSus.dart';
import 'package:bharatsocials/domains/healthHyg.dart';
import 'package:bharatsocials/domains/sarvaSiksha.dart';
import 'package:bharatsocials/domains/womenEmp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
    bannerImages = List.generate(bannerCount,
        (index) => 'https://via.placeholder.com/300x150?text=Banner+$index');

    // Set up a timer to auto-scroll the banners
    _bannerTimer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_pageController.hasClients) {
        if (currentPage < bannerCount - 1) {
          currentPage++;
        } else {
          currentPage = 0;
        }
        _pageController.animateToPage(
          currentPage,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  void _startScrolling() {
    Future.delayed(const Duration(seconds: 2), () {
      if (_scrollController.hasClients) {
        _scrollController
            .animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(seconds: 10),
          curve: Curves.linear,
        )
            .then((_) {
          if (_scrollController.hasClients) {
            _scrollController
                .jumpTo(_scrollController.position.minScrollExtent);
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
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 50),
        child: Column(
          children: <Widget>[
            // Banner
            SizedBox(
              height: 225,
              child: PageView.builder(
                controller: _pageController,
                itemCount: bannerImages.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
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
              color: const Color.fromARGB(255, 198, 238, 247),
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
                        style: const TextStyle(
                            color: Color.fromARGB(255, 248, 68, 68),
                            fontSize: 20),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SarvaSiksha()),
                    );
                  },
                  child: SizedBox(
                    width: 140,
                    height: 140,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(162, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(Icons.school, size: 60, color: Colors.blue),
                          Text('Sarva ', style: TextStyle(fontSize: 18)),
                          Text(' Sikhsha ', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WomenEmp()),
                    );
                  },
                  child: SizedBox(
                    width: 140,
                    height: 140,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(162, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(Icons.woman, size: 60, color: Colors.purple),
                          Text('     Women ', style: TextStyle(fontSize: 18)),
                          Text(' Empowerment ', style: TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
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
                            MaterialPageRoute(
                                builder: (context) => const EnvSus()),
                          );
                        },
                        child: SizedBox(
                          width: 140,
                          height: 140,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(162, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.eco, size: 60, color: Colors.green),
                                Text('    Environment ',
                                    style: TextStyle(fontSize: 18)),
                                Text('   Sustainability',
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 50),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HealthHyg()),
                          );
                        },
                        child: SizedBox(
                          width: 140,
                          height: 140,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(162, 255, 255, 255),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.medical_services,
                                    size: 60, color: Colors.red),
                                Text('   Health & ',
                                    style: TextStyle(fontSize: 18)),
                                Text('Hygiene', style: TextStyle(fontSize: 18)),
                              ],
                            ),
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
      ),
    );
  }
}
