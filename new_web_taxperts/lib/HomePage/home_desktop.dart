import 'package:flutter/material.dart';
import 'package:new_web_taxperts/colors.dart';

import '../Componants.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                        primary:
                            AppColor.buttonGreen, // Set the background color to green
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
                      'images/bach600.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              'DO YOUR TAXES RIGHT',
                              style: TextStyle(
                                fontSize: 76,
                                color: AppColor.headingDarkGreen,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
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
                                style: TextStyle(
                                    color: AppColor.buttonGreen, fontSize: 25),
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
                                    fixedSize: Size(
                                        240, 60), // Set the width and height
                                    primary: AppColor.buttonGreen,// Set the background color to green
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
                                        'Estimate Your Tax ',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color:
                                          AppColor.buttonGreen, // Text color green
                                        ),
                                      ),
                                      Icon(
                                        Icons.double_arrow_rounded,
                                        color: Colors.green, // Icon color green
                                      ),
                                    ],
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    fixedSize: Size(
                                        240, 60), // Set the width and height
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
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Taxpert always behind you to meet your compliance obligations',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 340,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/indTax.png'),
                ),
                Container(
                  width: 340,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/bTax.png'),
                ),
                Container(
                  width: 340,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/otherTax.png'),
                ),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'images/back02.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          'Award Winning Taxation-as-a-Service Company in Sri Lanka',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 2, child: Container()),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                    height:
                                        20), // Add space between the title and the list
                                AwardDescription(
                                  title: 'Digital Social Impact Award',
                                  description:
                                      'The Information Communication Agency in Sri Lanka (ICTA) was awarded the digital social impact award in 2019 for digitalizing the tax compliance system first time in Sri Lanka.',
                                ),
                                AwardDescription(
                                  title: 'NBQS Award',
                                  description:
                                      'Chartered Institute for ICT, Colombo Chapter awarded the National Best Quality Software Award in 2019 for introducing the Taxation System for citizens and businesses to comply easily with their tax compliance obligations.',
                                ),
                                AwardDescription(
                                  title: 'National Ingenuity Award',
                                  description:
                                      'The Sri Lanka Association of Software and Services Companies (SLASSCOM) awarded the National Ingenuity Award for the best innovation in business process management at the award ceremony held on 30th March 2021 in Shangri-La, Colombo.',
                                ),
                                // ... Add more AwardDescription widgets if needed ...
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),

                    ],
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 20),
              child: Row(
                children: [
                  Text(
                    'Serve you with Digital Tax Solutions',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: AppColor.headingDarkGreen
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 5,bottom: 20),
              child: Row(
                children: [
                  // Icon(Icons.line_axis),
                  Text(
                    'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision',
                    style: TextStyle(
                        fontSize: 20,

                        color: Colors.black
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: 400,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/back03.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Cards scrollable horizontally
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          // Example of a card, repeat as needed
                          ServiceCard(
                            title: 'Tax Advisory Services',
                            description:
                            'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits.',
                            assetImagePath: 'images/mPersonIcon.png',

                          ),
                          ServiceCard(
                            title: 'Tax Return Service',
                            description:
                            'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas.',
                            assetImagePath: 'images/trsIcon.png',

                          ),
                          ServiceCard(
                            title: 'Expat Tax Services',
                            description: 'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income.',
                             assetImagePath: 'images/etsIcon.png', // Choose an appropriate icon
                          ),
                          ServiceCard(
                            title: 'Transfer Pricing',
                            description: 'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns.',
                             assetImagePath: 'images/tpIcon.png', // Choose an appropriate icon
                          ),

                          // Add more cards...
                        ],
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, bool isSelected) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 12.0), // Adjust spacing as needed
      child: TextButton(
        onPressed: () {
          // Menu item action
        },
        style: TextButton.styleFrom(
          primary: isSelected
              ? AppColor.headingDarkGreen
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
