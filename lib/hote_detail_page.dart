import 'package:flutter/material.dart';

class HotelDetailPage extends StatelessWidget {
  final Map<String, String> hotel;

  const HotelDetailPage({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel["name"]!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(hotel["image"]!),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                hotel["name"]!,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                hotel["description"]!,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Booking Confirmed!')),
                );
              },
              child: const Text('Book Now'),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
