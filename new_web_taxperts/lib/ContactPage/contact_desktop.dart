import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Componants.dart';
import '../colors.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({super.key});

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    mainAxisSize: MainAxisSize.min, // To wrap the row width around its children
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
                      _buildMenuItem('Blog', false, () {
                        // Action for Blog menu item
                        Navigator.of(context).pushNamed('/blog');
                      }),
                      _buildMenuItem('Contact', true, () {
                        // Action for Contact menu item
                        Navigator.of(context).pushNamed('/contact');
                      }),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
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
                    fontSize: 60,
                    fontFamily: 'Candal'
                  ),
                ),
                Text(
                  'Contact us for more details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400
                  ),
                ),
                // Add more widgets for additional information or buttons
              ],
            ),
          ],
        ),


        Container(height: 720,color: AppColor.lightGreen,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 15),
                  child: Text(
                    'Meet the Consultants',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                      fontFamily: 'Almarai',
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 25),
                  child: Text(
                    'The team behind the digital transformation in taxation to ease of adhering to compliance obligation from anywhere any time',
                    style: TextStyle(fontSize: 24,fontFamily: 'Inter',
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 375,
                            height: 420,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('images/damith.png'), // Replace with your image path
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Damith Gangodawilage',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Founder/Chief Compliance',
                            style: TextStyle(
                              fontSize: 26,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                padding: EdgeInsets.all(9),
                                margin: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/fbIcon.png'), // Replace with your asset path
                              ),

                              Container(
                                width: 35,
                                height: 35,
                                padding: EdgeInsets.all(7),
                                margin: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/emailIcon.png'),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                padding: EdgeInsets.all(9),
                                margin: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/twIcon.png'),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                padding: EdgeInsets.all(11),
                                margin: EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: Offset(0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/inIcon.png'),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // This is the placeholder for the right side element
                            // Add your own widget/component here
                            color: Colors.grey[300], // Placeholder color
                            height: 200, // Placeholder height
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),



        Padding(
          padding: const EdgeInsets.symmetric(vertical: 35.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0,),
                  child: Text(
                    'Contact Info',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 36,
                        fontFamily: 'Almarai',
                        fontWeight: FontWeight.w800
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space items out evenly
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ContactInfoDesk(
                      icon: Icons.phone,
                      title: 'Call Us',
                      content: '077 714 8839\n011 242 4922',
                    ),
                    ContactInfoDesk(
                      icon: Icons.email,
                      title: 'Mail Us',
                      content: 'connect@taxperts.lk',
                    ),
                    ContactInfoDesk(
                      icon: Icons.location_on,
                      title: 'Address',
                      content: 'Taxperts Lanka Pvt. Ltd\nNo. 101, Olcott Mawatha\nColombo',
                    ),
                  ],
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),



          ],
        ),
      )
    );
  }

  Widget _buildMenuItem(String text, bool isSelected, VoidCallback onPressedAction) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0), // Adjust spacing as needed
      child: TextButton(
        onPressed: onPressedAction,
        style: TextButton.styleFrom(
          primary: isSelected ? AppColor.headingDarkGreen : Colors.black, // Text color based on selection
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
