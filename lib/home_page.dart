import 'package:flutter/material.dart';
import 'package:central_javreseps/components/detail_food.dart' as detail;
import 'package:central_javreseps/components/food_card.dart';
import 'package:central_javreseps/components/difficulty_filter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedDifficulty = 'Easy';

  final List<Map<String, dynamic>> allFoods = [
    {
      'name': 'Lumpia',
      'city': 'Semarang',
      'difficulty': 'Easy',
      'rating': '4.5',
      'cookTime': '30 min',
      'ingredients': ['Kulit lumpia', 'Bambu muda', 'Bawang putih'],
    },
    {
      'name': 'Wedang Ronde',
      'city': 'Salatiga',
      'difficulty': 'Medium',
      'rating': '4.2',
      'cookTime': '40 min',
      'ingredients': ['Tepung ketan', 'Jahe', 'Gula'],
    },
    {
      'name': 'Teh Poci',
      'city': 'Tegal',
      'difficulty': 'Easy',
      'rating': '4.0',
      'cookTime': '10 min',
      'ingredients': ['Teh melati', 'Gula batu'],
    },
    {
      'name': 'Sate Manusia',
      'city': 'Karanganyar',
      'difficulty': 'Hard',
      'rating': '3.5',
      'cookTime': '50 min',
      'ingredients': ['(Rahasia perusahaan)'],
    },
    {
      'name': 'Sate Kelinci',
      'city': 'Karanganyar',
      'difficulty': 'Medium',
      'rating': '4.3',
      'cookTime': '45 min',
      'ingredients': ['Daging kelinci', 'Bumbu kacang'],
    },
    {
      'name': 'JB Makhluk hitam',
      'city': 'Karanganyar',
      'difficulty': 'Hard',
      'rating': '4.1',
      'cookTime': '60 min',
      'ingredients': ['Rahasia gelap', 'Rempah hitam'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    final filteredFoods = allFoods
        .where((food) => food['difficulty'] == selectedDifficulty)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Resep'),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DifficultyFilter(
                selected: selectedDifficulty,
                onSelected: (value) {
                  setState(() {
                    selectedDifficulty = value;
                  });
                },
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              itemCount: filteredFoods.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final food = filteredFoods[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => detail.FoodDetailPage(
                          name: food['name'],
                          city: food['city'],
                          difficulty: food['difficulty'],
                          rating: food['rating'],
                          cookTime: food['cookTime'],
                          ingredients: List<String>.from(food['ingredients']),
                        ),
                      ),
                    );
                  },
                  child: FoodCard(
                    name: food['name'],
                    city: food['city'],
                    difficulty: food['difficulty'],
                    rating: food['rating'],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
