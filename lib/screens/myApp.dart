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
          title: const Text('My App'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8.0), // Apply padding here
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ชื่อรายการ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 114, 87, 8),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Text(
                        'ราคา',
                        style: TextStyle(
                            color: Color.fromARGB(255, 114, 87, 8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
