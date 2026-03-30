import 'package:flutter/material.dart';

class UserInfoContainer extends StatelessWidget {
  final String label;
  final String labelData;
  final double? containerHeight;
  const UserInfoContainer({
    super.key,
    required this.label,
    required this.labelData,
    this.containerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight ?? 90.0,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            label,
            style: containerHeight == null
                ? const TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w500,
                  )
                : const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A2E),
                  ),
          ),
          const SizedBox(height: 8),
          Text(
            labelData,
            style: containerHeight != null
                ? const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  )
                : const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1A2E),
                  ),
          ),
        ],
      ),
    );
  }
}
