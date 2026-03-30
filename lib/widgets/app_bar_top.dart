import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  final String clientName;

  const TopBar({super.key, required this.clientName});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool _hasNotification = true;
  String get _initial =>
      widget.clientName.isNotEmpty ? widget.clientName[0] : '?';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          decoration: const BoxDecoration(
            color: Color(0xFF6C3EE8),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              _initial,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome back,',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              widget.clientName,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1A1A2E),
              ),
            ),
          ],
        ),
        const Spacer(),
        Stack(
          children: [
            IconButton(
              icon: const Icon(
                Icons.notifications_outlined,
                color: Color(0xFF1A1A2E),
                size: 24,
              ),
              onPressed: () {
                setState(() {
                  _hasNotification = !_hasNotification;
                });
              },
            ),
            if (_hasNotification)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
