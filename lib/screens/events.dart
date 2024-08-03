import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background image
          // You can add your background image here if needed.

          // Foreground content
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 10,
              // bottom: 10,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Three elongated rectangles stacked vertically with multiple details
                  _buildRoundedRectangle(
                    event: 'Event: Charity Run',
                    ngo: 'NGO: Helping Hands',
                    date: 'Date: 12th March 2023',
                    venue: 'Venue: City Park',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event: Food Drive',
                    ngo: 'NGO: Food for All',
                    date: 'Date: 25th April 2023',
                    venue: 'Venue: Community Center',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event: Environmental Cleanup',
                    ngo: 'NGO: Green Earth',
                    date: 'Date: 15th May 2023',
                    venue: 'Venue: Beachside',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event: Blood Donation Camp',
                    ngo: 'NGO: Red Cross',
                    date: 'Date: 10th June 2023',
                    venue: 'Venue: Hospital',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event: Education Drive',
                    ngo: 'NGO: Educate All',
                    date: 'Date: 20th July 2023',
                    venue: 'Venue: School',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to build each elongated rounded rectangle with multiple details
  Widget _buildRoundedRectangle({
    required String event,
    required String ngo,
    required String date,
    required String venue,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: 8.0), // Increased spacing between rectangles
      width: double.infinity, // Takes full width of the parent
      decoration: BoxDecoration(
        color: Color.fromRGBO(152, 220, 247, 0.762), // Background color
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color:
                Color.fromARGB(255, 8, 7, 7).withOpacity(0.2), // Shadow color
            spreadRadius: 1, // Spread radius
            blurRadius: 4, // Blur radius for more prominent shadow
            offset: Offset(6, 6), // Shadow position (x, y)
          ),
        ],
        border: Border.all(
          // Adding a mild border
          color: Color.fromARGB(255, 128, 131, 136)
              .withOpacity(0.5), // Border color with opacity
          width: 0.9, // Border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 20.0), // Increased padding for more text space
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event,
              style: TextStyle(
                fontSize:
                    20.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 6.0), // Increased spacing between text
            Text(
              ngo,
              style: TextStyle(
                fontSize:
                    20.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 8.0), // Increased spacing between text
            Text(
              date,
              style: TextStyle(
                fontSize:
                    20.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 6.0), // Increased spacing between text
            Text(
              venue,
              style: TextStyle(
                fontSize:
                    20.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}