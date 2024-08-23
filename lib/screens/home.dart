import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print("Text Button Pressed");
              },
              child: const Text(
                "Text",
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                ),
              ),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.amber.shade100,
                foregroundColor: Colors.brown,
              ),
              onPressed: () {
                print("Filled Button Pressed");
              },
              child: const Text(
                "Filled",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                print("Elevated Button Pressed");
              },
              child: const Text("Elevated"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.red, // Border color instead of background color
              ),
              onPressed: () {
                print("Outlined Button Pressed");
              },
              child: const Text("Outline"),
            ),
          ],
        ),
      ),
    );
  }
}
