import 'package:flutter/material.dart';


class TransactionItem extends StatefulWidget {
  final IconData icon;
  final Color iconColor;
  final Color? iconBg;
  final String title;
  final String subtitle;
  final num amount;
  // final Color amountColor;
  const TransactionItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.iconBg,
    required this.title,
    required this.subtitle,
    required this.amount,
    // required this.amountColor,
  });

  @override
  State<TransactionItem> createState() => _TransactionItemState();
}

class _TransactionItemState extends State<TransactionItem> {

  Color get amountColor {
    if (widget.amount < 0) {
      return Colors.red;
    } else if (widget.amount > 0) {
      return Colors.green;
    } else {
      return Colors.black;
    }
  }
  String get formattedAmount {
    if (amountColor == Colors.red){
      return "-\$${widget.amount.abs().toStringAsFixed(2)}";
    } else if (amountColor == Colors.green){
      return "+\$${widget.amount.toStringAsFixed(2)}";
    } else {
      return "\$${widget.amount.toStringAsFixed(2)}";
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha:0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(color: widget.iconBg, shape: BoxShape.circle),
            child: Icon(widget.icon, color: widget.iconColor, size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xFF1A1A2E),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  widget.subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            formattedAmount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: amountColor,
            ),
          ),
        ],
      ),
    );
  }
}
