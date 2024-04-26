import 'package:flutter/material.dart';

import '../Componants.dart';
import '../colors.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                          _buildPopupMenuItem('Home', true), // Assuming no item is selected by default
                          _buildPopupMenuItem('Tax Calculator', false),
                          _buildPopupMenuItem('Services', false),
                          _buildPopupMenuItem('Resources', false),
                          _buildPopupMenuItem('Blog', false),
                          _buildPopupMenuItem('Contact', false),
                        ],
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.green, // Set icon color here
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/start');
                            // Action when button is pressed
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 40), backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Start Now',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 500,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
              child: AnimatedOpacity(
                opacity: _opacityAnimation.value,
                duration: const Duration(seconds: 2),
                    child: Image.asset(
                      'images/bach500.png', // Replace with your background image
                      fit: BoxFit.cover,
                    ),
                  ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 25.0),
                            child: SlideInAnimation(
                              delay: 100,
                              child: Text(
                                'STAY CONNECT WITH TAXPERTS',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.black,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: SlideInAnimation(
                              delay: 100,
                              child: Text(
                                'DO YOUR TAXES RIGHT',
                                style: TextStyle(
                                  fontSize: 58,
                                  color: AppColor.headingDarkGreen,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: SlideInAnimation(
                              delay: 100,
                              child: Text(
                                'Experience Sri Lanka\'s First Online Taxation Service. Simplifying',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: 25.0),
                            child: SlideInAnimation(
                              delay: 100,
                              child: Text(
                                'Taxes with a Click. Get in Touch for Innovative, Personalized Tax Solutions.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
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
                              child: SlideInAnimation(
                                delay: 100,
                                child: Text(
                                  'Discover More >>',
                                  style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      color: AppColor.buttonGreen, fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SlideInAnimation(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/contact');// Add your onPressed code here
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: const Size(
                                          210, 50), backgroundColor: AppColor
                                          .buttonGreen, // Set the background color to green
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Set the border radius
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Meet Tax Expert ',
                                          style: TextStyle(fontSize: 18,fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,),
                                        ),
                                        Icon(
                                          Icons.double_arrow_rounded,
                                          color: Colors.white,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                SlideInAnimation(
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/tax-calculator');// Add your onPressed code here
                                    },
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors
                                          .green, fixedSize: const Size(
                                          215, 50), // Set the width and height
                                      backgroundColor: Colors
                                          .white, // Primary color used for the text and icon
                                      side: const BorderSide(
                                          color:
                                              Colors.green), // Border color green
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            10), // Set the border radius
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Estimate Your Tax ',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: AppColor
                                                .buttonGreen, // Text color green
                                          ),
                                        ),
                                        const Icon(
                                          Icons.double_arrow_rounded,
                                          color: Colors.green, // Icon color green
                                        ),
                                      ],
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
            const Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
              child: Text(
                'Taxpert always behind you to meet your compliance obligations',
                style: TextStyle(
                    fontSize: 30,
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
                    width: 280,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20), // Add horizontal margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Image.asset('images/Indtax1.png'),
                  ),
                  Container(
                    width: 280,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20), // Add horizontal margin
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Image.asset('images/bTax1.png'),
                  ),
                  Container(
                    width: 280,
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
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20),
                        child: Text(
                          'Award Winning Taxation-as-a-Service Company in Sri Lanka',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              'images/swarnawahini.png', // Replace with your asset path
                              height: 200,
                            ),
                          ),
                          const Expanded(
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
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 20),
              child: Row(
                children: [
                  Text(
                    'Serve you with Digital Tax Solutions',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: AppColor.headingDarkGreen),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 25.0, top: 5, bottom: 20, right: 25),
              child: Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
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
                  const Column(
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
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'images/WhyCh.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            const WFooterTab(),
          ],
        ),
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
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: TextButton(
        onPressed: () {
          // Menu item action
        },
        style: TextButton.styleFrom(
          foregroundColor: isSelected ? Colors.green : Colors.black,
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
