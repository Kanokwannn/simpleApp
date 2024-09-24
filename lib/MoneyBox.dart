import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  String title;
  int amount;
  Color color;
 
  MoneyBox(this.title, this.amount, this.color, {super.key});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Text(
                NumberFormat('#,###.##').format(amount),
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
} 