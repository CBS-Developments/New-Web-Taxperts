import 'package:flutter/material.dart';

class CalculatorTablet extends StatefulWidget {
  const CalculatorTablet({super.key});

  @override
  State<CalculatorTablet> createState() => _CalculatorTabletState();
}

class _CalculatorTabletState extends State<CalculatorTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Tablet'),
    );
  }
}
