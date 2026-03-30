import 'package:flutter/material.dart';

Widget totalExpenseCard() {
    
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: const Color(0xFFFFFFFF),
      shadowColor: const Color(0xFFFEEEEF).withValues(alpha: 0.3),
      
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Expenses (Last 30 days)',
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),
            const SizedBox(height: 8),
            const Text(
              '-\$1270.00',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE53935),
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: const [
                Icon(Icons.arrow_upward, color: Color(0xFFE53935), size: 14),
                SizedBox(width: 4),
                Text(
                  'Up 12% from last month',
                  style: TextStyle(fontSize: 13, color: Color(0xFFE53935)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
}