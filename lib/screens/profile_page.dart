import 'package:flutter/material.dart';
import 'package:flutter_app_ui_assignment/widgets/widgets.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 16),
              TopBar(clientName: "Turjjo Halder"),
              const SizedBox(height: 12),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'My Profile',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 16),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: const Color.fromARGB(255, 140, 97, 250),

                    child: Text(
                      "TH",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              // Placeholder for profile details
              UserInfoContainer(label: "Name", labelData: "Turjjo Halder"),
              const SizedBox(height: 12),
              UserInfoContainer(label: "StudentID", labelData: "2222589"),
              const SizedBox(height: 12),
              UserInfoContainer(
                label: "Email",
                labelData: "turjohalder41@gmail.com",
              ),
              const SizedBox(height: 12),
              UserInfoContainer(
                label: "Bio / Story",
                labelData:
                    "Curious and driven, I explore technology with a problem solver’s mindset learning, building, and refining along the way. From coding concepts to real-world challenges, I’m constantly evolving, turning ideas into practical, impactful solutions.",
                containerHeight: 210, // Increased height for bio
              ),

              const SizedBox(height: 8),
              // const Text('turjjo.halder@example.com'),
            ],
          ),
        ),
      ),
    );
  }
}


