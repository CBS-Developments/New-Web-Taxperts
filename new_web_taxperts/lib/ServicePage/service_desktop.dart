import 'package:flutter/material.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({super.key});

  @override
  State<ServiceDesktop> createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Desktop'),
    );
  }
}
