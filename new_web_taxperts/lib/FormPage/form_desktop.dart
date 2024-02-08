import 'package:flutter/material.dart';

class FormDesktop extends StatefulWidget {
  const FormDesktop({super.key});

  @override
  State<FormDesktop> createState() => _FormDesktopState();
}

class _FormDesktopState extends State<FormDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Desktop'),
    );
  }
}
