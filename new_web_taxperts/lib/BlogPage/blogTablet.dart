import 'package:flutter/material.dart';

class BlogTablet extends StatefulWidget {
  const BlogTablet({super.key});

  @override
  State<BlogTablet> createState() => _BlogTabletState();
}

class _BlogTabletState extends State<BlogTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Tablet'),
    );
  }
}
