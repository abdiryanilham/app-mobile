import 'package:flutter/material.dart';

class FoodDetailPage extends StatelessWidget {
  final String name;
  final String city;
  final String difficulty;
  final String rating;
  final String cookTime;
  final List<String> ingredients;

  const FoodDetailPage({
    super.key,
    required this.name,
    required this.city,
    required this.difficulty,
    required this.rating,
    required this.cookTime,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tampilan sesuai gambar kamu
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Placeholder(fallbackHeight: 400), // ganti dengan gambar
            const SizedBox(height: 10),
            Text(difficulty, style: const TextStyle(color: Colors.deepOrange)),
            const SizedBox(height: 5),
            Text(name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Cook Time", style: TextStyle(color: Colors.grey)),
            Text(cookTime, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text("Ingredients:", style: TextStyle(fontWeight: FontWeight.bold)),
            ...ingredients.map((item) => Text("• $item")).toList(),
          ],
        ),
      ),
    );
  }
}
