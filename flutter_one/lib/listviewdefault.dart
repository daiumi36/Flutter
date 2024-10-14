import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Defaults',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewDefaultsPage(),
    );
  }
}

class ListViewDefaultsPage extends StatelessWidget {
  const ListViewDefaultsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView Defaults'),
        ),
        body: ListView(padding: const EdgeInsets.all(8), children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(child: Text('Entry A')),
          ),
          Container(
            height: 50,
            color: Colors.amber[900],
            child: const Center(child: Text('Entry B')),
          ),
          Container(
            height: 50,
            color: Colors.amber[400],
            child: const Center(child: Text('Entry C')),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 100,
                  color: Colors.red,
                  child: const Center(child: Text('Horizontal A')),
                ),
                Container(
                  width: 100,
                  color: Colors.green,
                  child: const Center(child: Text('Horizontal B')),
                ),
                Container(
                  width: 100,
                  color: Colors.blue,
                  child: const Center(child: Text('Horizontal C')),
                ),
              ],
            ),
          ),
        ]));
  }
}
