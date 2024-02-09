import 'package:flutter/material.dart';

class FormTablet extends StatefulWidget {
  const FormTablet({super.key});

  @override
  State<FormTablet> createState() => _FormTabletState();
}

class _FormTabletState extends State<FormTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: double.infinity,
          height: 80,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
              horizontal: 20.0), // Adjust padding as needed
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Logo.png', // Replace with your asset path
                height: 50, // Adjust the size as necessary
              ),
            ],
          ),
        ),
      ],
      ),);
  }
}
