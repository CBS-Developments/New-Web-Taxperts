import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'images/Logo.png',
                  height: 50,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                    PopupMenuButton<String>(
                      onSelected: (String result) {
                        // Handle menu item selection
                      },
                      itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                        _buildPopupMenuItem('Home', true),
                        _buildPopupMenuItem('Tax Calculator', false),
                        _buildPopupMenuItem('Services', false),
                        _buildPopupMenuItem('Resources', false),
                        _buildPopupMenuItem('Blog', false),
                        _buildPopupMenuItem('About', false),
                      ],
                      icon: Icon(
                        Icons.menu,
                        color: Colors.green, // Set icon color here
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Action when button is pressed
                        },
                        child: Text(
                          'Start Now',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(130, 40),
                          primary: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PopupMenuEntry<String> _buildPopupMenuItem(String text, bool isSelected) {
    return PopupMenuItem<String>(
      value: text,
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.green : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, bool isSelected) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: TextButton(
        onPressed: () {
          // Menu item action
        },
        style: TextButton.styleFrom(
          primary: isSelected ? Colors.green : Colors.black,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
