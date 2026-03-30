import 'package:flutter/material.dart';

class SpendingBreakdownCard extends StatelessWidget {
  const SpendingBreakdownCard({super.key});

  static const List<_SpendingCategory> _categories = [
    _SpendingCategory('Food & Drink', 450.0, 35, Color(0xFFE53935)),
    _SpendingCategory('Shopping', 320.0, 25, Color(0xFF9C27B0)),
    _SpendingCategory('Housing', 280.0, 22, Color(0xFFFFB300)),
    _SpendingCategory('Transport', 150.0, 12, Color(0xFF43A047)),
    _SpendingCategory('Other', 70.0, 6, Color(0xFF9E9E9E)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Spending Breakdown',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A2E),
            ),
          ),
          const SizedBox(height: 20),
          ..._categories.map((cat) => _CategoryRow(cat)),
        ],
      ),
    );
  }
}

class _CategoryRow extends StatelessWidget {
  final _SpendingCategory cat;

  const _CategoryRow(this.cat);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cat.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1A1A2E),
                ),
              ),
              Text(
                '\$${cat.amount.toStringAsFixed(2)} (${cat.percent}%)',
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF555555),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 7,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                widthFactor: cat.percent / 100,
                child: Container(
                  height: 7,
                  decoration: BoxDecoration(
                    color: cat.color,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SpendingCategory {
  final String name;
  final double amount;
  final int percent;
  final Color color;

  const _SpendingCategory(this.name, this.amount, this.percent, this.color);
}