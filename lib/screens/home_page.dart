import 'package:flutter/material.dart';
import 'package:flutter_app_ui_assignment/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),

                    TopBar(clientName: "Turjjo Halder"),
                    const SizedBox(height: 20),
                    buildBalanceCard(),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActionButton.actionButton(Icons.swap_horiz, 'Transfer'),
                        ActionButton.actionButton(
                          Icons.error_outline,
                          'Pay Bills',
                        ),
                        ActionButton.actionButton(
                          Icons.currency_exchange_rounded,
                          'Invest',
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Recent Transactions',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1A1A2E),
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF6C3EE8),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TransactionItem(
                      icon: Icons.subscriptions_outlined,
                      iconColor: Colors.red,
                      iconBg: const Color(0xFFFFEEEE),
                      title: 'Netflix Subscripti...',
                      subtitle: 'Entertainment • Today',
                      amount: -19.99,
                    ),
                    TransactionItem(
                      icon: Icons.local_cafe,
                      iconColor: Colors.brown,
                      iconBg: const Color(0xFFF5EFE6),
                      title: 'Coffee Shop',
                      subtitle: 'Food & Drink • Today',
                      amount: -4.50,
                    ),
                    TransactionItem(
                      icon: Icons.monetization_on,
                      iconColor: Colors.green,
                      iconBg: const Color(0xFFEAF7EE),
                      title: 'Salary Deposit',
                      subtitle: 'Income • Yesterday',
                      amount: 3500.00,
                    ),
                    TransactionItem(
                      icon: Icons.shopping_cart,
                      iconColor: Colors.orange,
                      iconBg: const Color(0xFFFFF3E0),
                      title: 'Grocery Store',
                      subtitle: 'Shopping • Yesterday',
                      amount: -55.80,
                    ),
                    TransactionItem(
                      icon: Icons.shopping_bag,
                      iconColor: Colors.blueGrey,
                      iconBg: const Color(0xFFECEFF1),
                      title: 'Amazon Purchase',
                      subtitle: 'Shopping • 2 days ago',
                      amount: 120.85,
                    ),
                    TransactionItem(
                      icon: Icons.cyclone_rounded,
                      iconColor: const Color.fromARGB(255, 83, 166, 207),
                      iconBg: const Color(0xFFECEFF1),
                      title: 'AI Subscription',
                      subtitle: 'Digital tools • 13 days ago',
                      amount: 19.99,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
