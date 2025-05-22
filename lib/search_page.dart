import 'package:flutter/material.dart';
import 'components/food_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  final List<Map<String, String>> foods = const [
    {"name": "Lumpia", "city": "Semarang"},
    {"name": "Wedang Ronde", "city": "Salatiga"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
    {"name": "Teh Poci", "city": "Tegal"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Column(
          children: [
            const Padding(
            
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  
                ),
              ),
            ),

            // Search field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search your meal",
                  prefixIcon: const Icon(Icons.search),
                  fillColor: Colors.grey[100],
                  filled: true,
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Placeholder image
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: const [
                    Card(
                        child: SizedBox(
                            width: 460, height: 250, child: Text("Resep A"))),
                    Card(
                        child: SizedBox(
                            width: 460, height: 250, child: Text("Resep B"))),
                    Card(
                        child: SizedBox(
                            width: 460, height: 250, child: Text("Resep C"))),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 16),

            // List makanan
            Expanded(
              child: ListView.builder(
                itemCount: foods.length,
                itemBuilder: (context, index) {
                  final food = foods[index];
                  return FoodCard(
                    name: food['name']!,
                    city: food['city']!,
                    difficulty: 'Easy',
                    rating: '4.8',
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
