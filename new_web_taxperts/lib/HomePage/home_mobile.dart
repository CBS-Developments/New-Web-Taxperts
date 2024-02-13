import 'package:flutter/material.dart';

import '../Componants.dart';
import '../colors.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/Logo.png',
                    height: 40,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton<String>(
                        onSelected: (String value) {
                          switch (value) {
                            case 'Home':
                              Navigator.of(context).pushNamed('/home');
                              break;
                            case 'Tax Calculator':
                              Navigator.of(context).pushNamed('/tax-calculator');
                              break;
                            case 'Services':
                              Navigator.of(context).pushNamed('/services');
                              break;
                            case 'Resources':
                              Navigator.of(context).pushNamed('/resources');
                              break;
                            case 'Blog':
                              Navigator.of(context).pushNamed('/blog');
                              break;
                            case 'Contact':
                              Navigator.of(context).pushNamed('/contact');
                              break;
                            case 'Start Now':
                              Navigator.of(context).pushNamed('/start');
                              break;
                            default:
                            // Handle unknown case
                              break;
                          }
                        },
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                            value: 'Home',
                            child: Text('Home'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Tax Calculator',
                            child: Text('Tax Calculator'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Services',
                            child: Text('Services'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Resources',
                            child: Text('Resources'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Blog',
                            child: Text('Blog'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Contact',
                            child: Text('Contact'),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem<String>(
                            value: 'Start Now',
                            child: ListTile(
                              leading: Icon(Icons.star, color: Colors.green), // Optional icon
                              title: Text('Start Now'),
                              onTap: () {
                                Navigator.of(context).pop('Start Now'); // Close the menu and navigate
                              },
                            ),
                          ),
                        ],
                        icon: Icon(
                          Icons.menu,
                          color: Colors.green, // Set icon color here
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            Container(
              height: 350,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: Image.asset(
                      'images/bach500.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              'DO YOUR TAXES RIGHT',
                              style: TextStyle(
                                fontSize: 30,
                                color: AppColor.headingDarkGreen,
                                fontWeight: FontWeight.w800,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: Text(
                              'Experience Sri Lanka\'s First Online Taxation Service. Simplifying',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Text(
                              'Taxes with a Click. Get in Touch for Innovative, Personalized Tax Solutions.',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/services');
                              },
                              child: Text(
                                'Discover More >>',
                                style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.buttonGreen, fontSize: 14),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/contact');
                                    // Add your onPressed code here
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Meet Tax Expert ',
                                        style: TextStyle(fontSize: 12,fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,),
                                      ),
                                      Icon(
                                        Icons.double_arrow_rounded,
                                        color: Colors.white,
                                        size: 12,
                                      )
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(
                                        149, 30), // Set the width and height
                                    primary: AppColor
                                        .buttonGreen, // Set the background color to green
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          5), // Set the border radius
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/tax-calculator');
                                    // Add your onPressed code here
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Estimate Your Tax ',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: AppColor
                                              .buttonGreen, // Text color green
                                        ),
                                      ),
                                      Icon(
                                        Icons.double_arrow_rounded,
                                        color: Colors.green, // Icon color green
                                        size: 12,
                                      ),
                                    ],
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    fixedSize: Size(
                                        149, 30), // Set the width and height
                                    backgroundColor: Colors
                                        .white, // Set the background color to white
                                    primary: Colors
                                        .green, // Primary color used for the text and icon
                                    side: BorderSide(
                                        color:
                                        Colors.green), // Border color green
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          5), // Set the border radius
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
              padding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Text(
                'Taxpert always behind you to meet your compliance obligations',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            SingleChildScrollView(
              scrollDirection:
              Axis.horizontal, // Set the scroll direction to horizontal
              child: Row(
                children: <Widget>[
                  Container(
                    width: 220,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20), // Add horizontal margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Image.asset('images/Indtax1.png'),
                  ),
                  Container(
                    width: 220,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20), // Add horizontal margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Image.asset('images/bTax1.png'),
                  ),
                  Container(
                    width: 220,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20), // Add horizontal margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Image.asset('images/Otax1.png'),
                  ),
                  // Add more widgets here if needed
                ],
              ),
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
                        padding: const EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20),
                        child: Text(
                          'Award Winning Taxation-as-a-Service Company in Sri Lanka',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          // Expanded(
                          //   flex: 2,
                          //   child: Image.asset(
                          //     'images/swarnawahini.png', // Replace with your asset path
                          //     height: 200,
                          //   ),
                          // ),
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
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                'Serve you with Digital Tax Solutions',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: AppColor.headingDarkGreen),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 10, bottom: 15, right: 15),
              child: Text(
                'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: Colors.black),
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
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 15,
                            ),
                            // Example of a card, repeat as needed
                            ServiceCard(
                              title: 'Tax Advisory Services',
                              description:
                              'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits.',
                              assetImagePath: 'images/mPersonIcon.png',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ServiceCard(
                              title: 'Tax Return Service',
                              description:
                              'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas.',
                              assetImagePath: 'images/trsIcon.png',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ServiceCard(
                              title: 'Expat Tax Services',
                              description:
                              'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income.',
                              assetImagePath:
                              'images/etsIcon.png', // Choose an appropriate icon
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            ServiceCard(
                              title: 'Transfer Pricing',
                              description:
                              'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns.',
                              assetImagePath:
                              'images/tpIcon.png', // Choose an appropriate icon
                            ),
                            SizedBox(
                              width: 15,
                            ),

                            // Add more cards...
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            Container(
              width: double.infinity,
              child: Image.asset(
                'images/WhyCh.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            WFooterMobile(),


          ],
        ),
      )
    );
  }
}
