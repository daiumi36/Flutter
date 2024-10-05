import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keno Statistics',
      home: KenoStatisticsScreen(),
    );
  }
}

class KenoStatisticsScreen extends StatelessWidget {
  final List<Keno> statistic = [
    Keno('Chẵn', 5),
    Keno('Lẻ', 2),
    Keno('Hoà CL', 3),
  ];

  KenoStatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercises'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Keno là một loại hình chơi xổ số của Vietlott',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            ...statistic.map((keno) => _buildKenoItem(keno)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildKenoItem(Keno keno) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(keno.text, style: const TextStyle(fontSize: 16.0)),
          ),
          Expanded(
            flex: 5,
            child: LinearProgressIndicator(
              value: keno.count /
                  5, // Assuming 5 is the max count for normalization
              backgroundColor: Colors.grey[300],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
            ),
          ),
          const SizedBox(width: 8.0),
          Text('${keno.count} lần', style: const TextStyle(fontSize: 16.0)),
        ],
      ),
    );
  }
}

class Keno {
  final String text;
  final int count;

  Keno(this.text, this.count);
}
