import 'package:flutter/material.dart';
import 'package:bharatsocials/broadcasts/pages/domain-chat-temp.dart';

const Color defaultDomainColor = Color.fromARGB(98, 255, 255, 255);

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Domain> domains = [
      Domain(
        id: 'env',
        name: 'Environment Sustainability',
        logo: 'https://via.placeholder.com/100', // placeholder logo URL
      ),
      Domain(
        id: 'wmnemp',
        name: 'Women Empowerment',
        logo: 'https://via.placeholder.com/100', // placeholder logo URL
      ),
      Domain(
        id: 'siksha',
        name: 'Sarva Siksha',
        logo: 'https://via.placeholder.com/100', // placeholder logo URL
      ),
      Domain(
        id: 'healthHyg',
        name: 'Health and Hygiene',
        logo: 'https://via.placeholder.com/100', // placeholder logo URL
      ),
    ];

    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: const Size.fromHeight(56), // default height of AppBar
      //   child: Container(
      //     decoration: BoxDecoration(
      //       border: Border(
      //         top: BorderSide(color: Colors.black, width: 1),
      //         bottom: BorderSide(color: Colors.black, width: 1),
      //       ),
      //     ),
      //     child: AppBar(
      //       title: const Center(child: Text('Domain Broadcast Page')),
      //       backgroundColor:
      //           Colors.transparent, // make the AppBar background transparent
      //       elevation: 0, // remove the elevation of the AppBar
      //     ),
      //   ),
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: domains
                .map((domain) => DomainCard(
                      domain: domain,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DomainChat(
                                    domainId: 'domainId',
                                    isVolunteer: true,
                                  ) //if value is true then keyboard is disabled

                              ),
                        );
                      },
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class DomainCard extends StatelessWidget {
  final Domain domain;
  final VoidCallback onTap;

  const DomainCard({super.key, required this.domain, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 80,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: domain.color.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(domain.logo),
                radius: 20,
              ),
            ),
            Expanded(
              child: Text(
                domain.name,
                style: const TextStyle(
                    fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Domain {
  final String id;
  final String name;
  final Color color;
  final String logo;

  Domain({
    required this.id,
    required this.name,
    this.color = defaultDomainColor, // Use the constant
    required this.logo,
  });
}
