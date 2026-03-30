import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  // Attribute
  final String title;
  final String description;

  // Constructor
  const LandingPage({
    super.key,
    required this.title,
    required this.description,
  });

  // Method
  void printTitle() {
    print(title);
  }

  void printDescription() {
    print(description);
  }

  // Builder method
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// __________________________________________________________
// StateFullWidget

class LundPage extends StatefulWidget {

  final String pageTitle = "Lund Page"; // variable attribute
  final String pageDescription = "This is the Lund Page"; // variable attribute
  const LundPage({super.key});

  @override
  State<LundPage> createState() => _LundPageState();
}

class _LundPageState extends State<LundPage> {


  final num g = 9.8; // constant attribute

  bool isTrue = true; // variable attribute

  
  // Method
  void printPageTitle() {
    print(widget.pageTitle);
  }

  // Build Method
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
