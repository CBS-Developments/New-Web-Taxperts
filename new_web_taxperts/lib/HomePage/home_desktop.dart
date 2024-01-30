import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Icon(
                              Icons.email_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'connect@taxperts.lk',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              '+94 777 148 839',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'No. 101, Olcott Mawatha, Colombo 11',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              'Monday - Friday: 8.30 - 17.30',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          padding: EdgeInsets.all(9),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Image.asset('images/fbIcon.png'),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Image.asset('images/twIcon.png'),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Image.asset('images/inIcon.png'),
                        ),
                        Container(
                          width: 35,
                          height: 35,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Image.asset('images/ytIcon.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust padding as needed
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space between items
                children: [
                  Image.asset(
                    'images/Logo.png', // Replace with your asset path
                    height: 60, // Adjust the size as necessary
                  ),
                  Row(
                    mainAxisSize: MainAxisSize
                        .min, // To wrap the row width around its children
                    children: <Widget>[
                      _buildMenuItem('Home',
                          true), // The 'true' parameter highlights 'Home'
                      _buildMenuItem('Tax Calculator', false),
                      _buildMenuItem('Services', false),
                      _buildMenuItem('Resources', false),
                      _buildMenuItem('Blog', false),
                      _buildMenuItem('About', false),
                    ],
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
                        fixedSize: Size(140, 40), // Set the width and height
                        primary:
                            Colors.green, // Set the background color to green
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Set the border radius
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 600,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/back.png', // Replace with your background image
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'STAY CONNECT WITH TAXPERTS',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'DO YOUR TAXES RIGHT',
                            style: TextStyle(
                              fontSize: 76,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Text(
                            'Experience Sri Lanka\'s First Online Taxation Service. Simplifying',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'Taxes with a Click. Get in Touch for Innovative, Personalized Tax Solutions.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Discover More >>',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 25),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed code here
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Meet Tax Expert ',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.double_arrow_rounded,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  fixedSize:
                                      Size(240, 60), // Set the width and height
                                  primary: Colors
                                      .green, // Set the background color to green
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set the border radius
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              OutlinedButton(
                                onPressed: () {
                                  // Add your onPressed code here
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Meet Tax Expert ',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green, // Text color green
                                      ),
                                    ),
                                    Icon(
                                      Icons.double_arrow_rounded,
                                      color: Colors.green, // Icon color green
                                    ),
                                  ],
                                ),
                                style: OutlinedButton.styleFrom(
                                  fixedSize:
                                      Size(240, 60), // Set the width and height
                                  backgroundColor: Colors
                                      .white, // Set the background color to white
                                  primary: Colors
                                      .green, // Primary color used for the text and icon
                                  side: BorderSide(
                                      color:
                                          Colors.green), // Border color green
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Set the border radius
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, bool isSelected) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 15.0), // Adjust spacing as needed
      child: TextButton(
        onPressed: () {
          // Menu item action
        },
        style: TextButton.styleFrom(
          primary: isSelected
              ? Colors.green
              : Colors.black, // Text color based on selection
        ),
        child: Text(
          text,
          style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 18),
        ),
      ),
    );
  }
}
