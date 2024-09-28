import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: const RecipeCard(),
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color: Colors.green[100],
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  color: Colors.green[200],
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                    'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  color: Colors.green[300],
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      Icon(Icons.star, color: Colors.green[500]),
                      const SizedBox(width: 8),
                      Text(
                        '170 Reviews',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  color: Colors.green[400],
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.kitchen, color: Colors.green[500]),
                          const SizedBox(height: 4),
                          const Text('PREP:'),
                          const Text('25 min'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.timer, color: Colors.green[500]),
                          const SizedBox(height: 4),
                          const Text('COOK:'),
                          const Text('1 hr'),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.restaurant, color: Colors.green[500]),
                          const SizedBox(height: 4),
                          const Text('FEEDS:'),
                          const Text('4-6'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 150,
            height: 150,
            child: Image.network(
              'data:image/jpeg;base64,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',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
