import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bực hết cả mình'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: 100,
                    height: 200,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 100,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
