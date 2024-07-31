import 'package:flutter/material.dart';
import 'package:bharatsocials/broadcasts/pages/domain-chat-temp.dart';

class GroupsScreen extends StatelessWidget {
  const GroupsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Domain> domains = [
      Domain(
        id: 'env',
        name: 'Environment Sustainability',
        color: Colors.green,
      ),
      Domain(
        id: 'wmnemp',
        name: 'Women Empowerment',
        color: Colors.purple,
      ),
      Domain(
        id: 'siksha',
        name: 'Sarva Siksha',
        color: Colors.blue,
      ),
      Domain(
        id: 'healthHyg',
        name: 'Health and Hygiene',
        color: Colors.red,
      ),
      Domain(
        id: 'siksha',
        name: 'Sarva Siksha',
        color: Colors.blue,
      ),
      Domain(
        id: 'healthHyg',
        name: 'Health and Hygiene',
        color: Colors.red,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Domain Broadcast Page')),
      ),
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
                                    isVolunteer: false,
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
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: domain.color.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            domain.name,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Domain {
  final String id;
  final String name;
  final Color color;

  Domain({required this.id, required this.name, required this.color});
}
