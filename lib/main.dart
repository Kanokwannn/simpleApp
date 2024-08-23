import 'package:flutter/material.dart';
import 'package:simpleapp/screens/menus.dart'; // Ensure this path is correct

void main() {
  runApp(
    const MaterialApp(
      title: "Simple App",
      home: MyHomePage(), // Define MyHomePage widget for better organization
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple App"),
      ),
      body: const Menus(), // Ensure Menus is a const constructor if possible
    );
  }
}
