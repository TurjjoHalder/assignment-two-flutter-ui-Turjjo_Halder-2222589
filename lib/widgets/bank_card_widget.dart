//Bank Card Widget
import 'package:flutter/material.dart';

class BankCardWidget extends StatelessWidget {
  final String cardNumber;
  final String cardHolder;
  final String expiryDate;
  final String bankName;

  const BankCardWidget({
    super.key,
    this.cardNumber = '4567',
    this.cardHolder = 'STUDENT NAME',
    this.expiryDate = '12/28',
    this.bankName = 'BANK',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 10,
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
            transform: GradientRotation(.68),
            colors: [
              Color.fromARGB(255, 20, 12, 41),
              Color.fromARGB(255, 86, 22, 150),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Top row: chip + bank name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Chip
                  Container(
                    height: 35,
                    width: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9B121),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  // Bank name
                  Text(
                    bankName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),

              // Card number
              Text(
                '$cardNumber  ****  ****  1234',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Bottom row: card holder + expiry
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'CARD HOLDER',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        cardHolder,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'EXPIRES',
                        style: TextStyle(
                          color: Colors.white38,
                          fontSize: 10,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        expiryDate,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}