import 'package:flutter/material.dart';

class RatingTabPage extends StatefulWidget {
  const RatingTabPage({super.key});

  @override
  State<RatingTabPage> createState() => _RatingTabPageState();
}

class _RatingTabPageState extends State<RatingTabPage> {
  // Mock data for ratings and reviews
  final double averageRating = 4.7;
  final int totalRatings = 120;
  final List<Map<String, dynamic>> recentReviews = [
    {'rating': 5, 'review': "Great service! Very polite and helpful."},
    {'rating': 4, 'review': "Smooth ride, but car was a bit untidy."},
    {
      'rating': 5,
      'review': "Excellent! Arrived on time and was very friendly."
    },
  ];
  final List<int> ratingBreakdown = [90, 20, 5, 3, 2]; // 5-star, 4-star, etc.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Ratings & Reviews"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Average Rating and Total Ratings
            Center(
              child: Column(
                children: [
                  Text(
                    averageRating.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "$totalRatings ratings",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Rating Breakdown
            const Text(
              "Rating Breakdown",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            for (int i = 5; i >= 1; i--)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    Text(
                      "$i stars",
                      style: const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: LinearProgressIndicator(
                        value: ratingBreakdown[5 - i] / totalRatings,
                        color: Colors.yellow[700],
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "${ratingBreakdown[5 - i]}",
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 30),
            // Recent Reviews
            const Text(
              "Recent Reviews",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: recentReviews.length,
                itemBuilder: (context, index) {
                  final review = recentReviews[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.star,
                        color: Colors.yellow[700],
                      ),
                      title: Text(
                        "${review['rating']} stars",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(review['review']),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
