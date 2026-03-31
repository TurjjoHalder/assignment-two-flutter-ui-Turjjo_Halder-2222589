import 'package:flutter/material.dart';

class AppBarModed extends StatefulWidget {
  // final String clientName;

  const AppBarModed({super.key});

  @override
  State<AppBarModed> createState() => _AppBarModedState();
}

class _AppBarModedState extends State<AppBarModed> {
  bool _hasNotification = true;
  // String get _initial =>
      // widget.clientName.isNotEmpty ? widget.clientName[0] : '?';

  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                const SizedBox(width: 20),
                Container(
                  width: 42,
                  height: 42,
                  decoration: const BoxDecoration(
                    color: Color(0xFF6C3EE8),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "T",
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome back,',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      "Turjjo Halder",
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
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      );
  }
}
