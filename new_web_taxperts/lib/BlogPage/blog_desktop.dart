import 'package:flutter/material.dart';

import '../colors.dart';

class BlogDesktop extends StatefulWidget {
  const BlogDesktop({super.key});

  @override
  State<BlogDesktop> createState() => _BlogDesktopState();
}

class _BlogDesktopState extends State<BlogDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                    _buildMenuItem('Home', false, () {
                      // Action for Home menu item
                      Navigator.of(context).pushNamed('/home');
                    }),
                    _buildMenuItem('Tax Calculator', false, () {
                      // Action for Tax Calculator menu item
                      Navigator.of(context).pushNamed('/tax-calculator');
                    }),
                    _buildMenuItem('Services', false, () {
                      // Action for Services menu item
                      Navigator.of(context).pushNamed('/services');
                    }),
                    _buildMenuItem('Resources', false, () {
                      // Action for Resources menu item
                      Navigator.of(context).pushNamed('/resources');
                    }),
                    _buildMenuItem('Blog', true, () {
                      // Action for Blog menu item
                      Navigator.of(context).pushNamed('/blog');
                    }),
                    _buildMenuItem('Contact', false, () {
                      // Action for Contact menu item
                      Navigator.of(context).pushNamed('/contact');
                    }),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/start');
                      // Action when button is pressed
                    },
                    child: Text(
                      'Start Now',
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(130, 40), // Set the width and height
                      primary: AppColor
                          .buttonGreen, // Set the background color to green
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


          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              // Background image
              Container(
                height: 500, // Set the height of the header
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'images/blohBack.png'), // Replace with your image path
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
                  SizedBox(height: 30,),
                  Text(
                    'BLOG',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontFamily: 'Candal'),
                  ),

                  SizedBox(height: 15,),
                  Text(
                    '    Connect with Taxperts Blog to get the\nlatest development in the taxation domain.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                  ),
                  // Add more widgets for additional information or buttons

                  Padding(
                    padding: const EdgeInsets.only(top: 120.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                          ),
                          child: Image.asset('images/YTRed.png'),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text("Watch Now",style: TextStyle(fontSize: 18,color: Colors.white),),
                        ),

                      ],
                    ),
                  ),


                ],
              ),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildMenuItem(
      String text, bool isSelected, VoidCallback onPressedAction) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: 12.0), // Adjust spacing as needed
      child: TextButton(
        onPressed: onPressedAction,
        style: TextButton.styleFrom(
          primary: isSelected
              ? AppColor.headingDarkGreen
              : Colors.black, // Text color based on selection
          textStyle: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
