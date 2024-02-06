import 'package:flutter/material.dart';

class ContactTablet extends StatefulWidget {
  const ContactTablet({super.key});

  @override
  State<ContactTablet> createState() => _ContactTabletState();
}

class _ContactTabletState extends State<ContactTablet> {
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
                      onSelected: (String value) {
                        switch (value) {
                          case 'Home':
                          // Action for Home
                            Navigator.of(context).pushNamed('/home');
                            break;
                          case 'Tax Calculator':
                          // Action for Tax Calculator
                            Navigator.of(context).pushNamed('/tax-calculator');
                            break;
                          case 'Services':
                          // Action for Services
                            Navigator.of(context).pushNamed('/services');
                            break;
                          case 'Resources':
                          // Action for Resources
                            Navigator.of(context).pushNamed('/resources');
                            break;
                          case 'Blog':
                          // Action for Blog
                            Navigator.of(context).pushNamed('/blog');
                            break;
                          case 'Contact':
                          // Action for Contact
                            Navigator.of(context).pushNamed('/contact');
                            break;
                        // Add more cases for other menu items as needed
                          default:
                          // Handle unknown case
                            break;
                        }
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                        _buildPopupMenuItem('Home', false), // Assuming no item is selected by default
                        _buildPopupMenuItem('Tax Calculator', false),
                        _buildPopupMenuItem('Services', false),
                        _buildPopupMenuItem('Resources', false),
                        _buildPopupMenuItem('Blog', false),
                        _buildPopupMenuItem('Contact', true),
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

          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // Background image
              Container(
                height: 400, // Set the height of the header
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/contactBack.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Overlay (darken the image)
              // Container(
              //   height: 300,
              //   color: Colors.black.withOpacity(0.3), // Adjust the opacity as needed
              // ),
              // Text and button
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'CONTACT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontFamily: 'Candal'
                    ),
                  ),
                  Text(
                    'Contact us for more details',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  // Add more widgets for additional information or buttons
                ],
              ),
            ],
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
}
