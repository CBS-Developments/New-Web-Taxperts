import 'package:flutter/material.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({super.key});

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Desktop'),
    );
  }
}
