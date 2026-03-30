

//Action Button Widget
import 'package:flutter/material.dart';

class ActionButton {
  final IconData icon;
  final String label;
  ActionButton(this.icon, this.label);

  static Widget actionButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 110,
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 44,
                height: 44,
                margin: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(29, 107, 62, 232),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: const Color(0xFF6C3EE8), size: 24),
              ),
              Text(
                label,

                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color(0xFF1A1A2E),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
