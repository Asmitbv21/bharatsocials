import 'package:flutter/material.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background image

          // Foreground content
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Three elongated rectangles stacked vertically with multiple details
                  _buildRoundedRectangle(
                    event: 'Event: ',
                    ngo: 'NGO: ',
                    date: 'Date: ',
                    venue: 'Venue: ',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event: ',
                    ngo: 'NGO: ',
                    date: 'Date: ',
                    venue: 'Venue: ',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event:',
                    ngo: 'NGO: ',
                    date: 'Date: ',
                    venue: 'Venue: ',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event:',
                    ngo: 'NGO: ',
                    date: 'Date: ',
                    venue: 'Venue: ',
                  ),
                  _buildRoundedRectangle(
                    event: 'Event: ',
                    ngo: 'NGO: ',
                    date: 'Date: ',
                    venue: 'Venue: ',
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
        color: const Color.fromARGB(192, 123, 194, 248), // Background color
        borderRadius: BorderRadius.circular(16.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 34, 13, 13)
                .withOpacity(0.1), // Shadow color
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 3), // Shadow position (x, y)
          ),
        ],
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
              style: const TextStyle(
                fontSize:
                    18.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 6.0), // Increased spacing between text
            Text(
              ngo,
              style: const TextStyle(
                fontSize:
                    18.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 8.0), // Increased spacing between text
            Text(
              date,
              style: const TextStyle(
                fontSize:
                    18.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 6.0), // Increased spacing between text
            Text(
              venue,
              style: const TextStyle(
                fontSize:
                    18.0, // Slightly larger text size for better readability
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(
      home: EventsScreen(),
    ));
