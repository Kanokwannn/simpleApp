import 'package:flutter/material.dart';
//import 'package:simpleapp/screens/latestRate.dart';
//import 'package:simpleapp/screens/convert.dart';
import 'package:simpleapp/screens/myApp.dart';
import 'package:simpleapp/MoneyBox.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.brown),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Account App",
          style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal, fontWeight:FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MoneyBox("ยอดเงินคงเหลือ", 1000, Colors.blue),
            const SizedBox(height: 8.0),
            MoneyBox("รายรับ", 15000, Colors.green),
            const SizedBox(height: 8.0),
            MoneyBox("รายจ่าย", 5000, Colors.red),
            const SizedBox(height: 8.0),
            MoneyBox("ค้างชำระ", 1200, Colors.orange),
          ],
        ),
      ),
    );
  }
}