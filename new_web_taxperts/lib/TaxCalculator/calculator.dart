import 'package:flutter/material.dart';
import 'package:new_web_taxperts/TaxCalculator/calculatoe_desktop.dart';
import 'package:new_web_taxperts/TaxCalculator/calculator_mobile.dart';
import 'package:new_web_taxperts/TaxCalculator/calculator_tablet.dart';
import 'package:new_web_taxperts/responsive.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(mobile: CalculatorMobile(), tablet: CalculatorTablet(), desktop: CalculatorDesktop());
  }
}
