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
          title: const Text('Vietnam Flag'),
          backgroundColor: Colors.red,
        ),
        body: const Center(
          child: VietnamFlag(),
        ),
      ),
    );
  }
}

class VietnamFlag extends StatelessWidget {
  const VietnamFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360, // Kích thước lá cờ
      height: 200,
      color: Colors.red, // Nền đỏ
      child: const Center(
        child: Icon(
          Icons.star, // Icon ngôi sao
          color: Colors.yellow, // Màu vàng của ngôi sao
          size: 150, // Kích thước ngôi sao
        ),
      ),
    );
  }
}
