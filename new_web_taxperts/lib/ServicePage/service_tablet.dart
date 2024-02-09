import 'package:flutter/material.dart';

class ServiceTablet extends StatefulWidget {
  const ServiceTablet({super.key});

  @override
  State<ServiceTablet> createState() => _ServiceTabletState();
}

class _ServiceTabletState extends State<ServiceTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Tablet'),
    );
  }
}
