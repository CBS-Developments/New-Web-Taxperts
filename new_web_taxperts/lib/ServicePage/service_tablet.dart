import 'package:flutter/material.dart';
import 'package:new_web_taxperts/Componants.dart';

import '../colors.dart';

class ServiceTablet extends StatefulWidget {
  const ServiceTablet({super.key});

  @override
  State<ServiceTablet> createState() => _ServiceTabletState();
}

class _ServiceTabletState extends State<ServiceTablet> with TickerProviderStateMixin {
  late AnimationController _imageFadeController;
  late Animation<double> _imageFadeAnimation;
  late AnimationController _textSlideController;
  late Animation<Offset> _textSlideAnimation;

  @override
  void initState() {
    super.initState();

    _imageFadeController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _imageFadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_imageFadeController);

    _textSlideController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _textSlideAnimation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: _textSlideController, curve: Curves.elasticOut),
    );

    _imageFadeController.forward();
    _textSlideController.forward();
  }

  @override
  void dispose() {
    _imageFadeController.dispose();
    _textSlideController.dispose();
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
                          _buildPopupMenuItem('Home', false), // Assuming no item is selected by default
                          _buildPopupMenuItem('Tax Calculator', false),
                          _buildPopupMenuItem('Services', true),
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
                            fixedSize: const Size(130, 40),
                            primary: Colors.green,
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

            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Background image
                FadeTransition(
                  opacity: _imageFadeAnimation,
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/ServiceBack.png'),
                        fit: BoxFit.cover,
                      ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SlideTransition(
                      position: _textSlideAnimation,
                      child: const Column(
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'Services',
                            style: TextStyle(
                                color: Colors.white, fontSize: 50, fontFamily: 'Candal'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Serve you with Digital Tax Solutions',
                            style: TextStyle(
                                color: Colors.white, fontSize: 22, fontFamily: 'Inter', fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ],
            ),

            const SizedBox(height: 50,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Example of a card, repeat as needed
                    ServicePageCardTab(
                      title: 'Tax Advisory Services',
                      description:
                      'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits.',
                      assetImagePath: 'images/mPersonIcon.png',
                    ),
                    SizedBox(width: 50,),
                    ServicePageCardTab(
                      title: 'Tax Return Service',
                      description:
                      'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas.',
                      assetImagePath: 'images/trsIcon.png',
                    ),

                    // Add more cards...
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ServicePageCardTab(
                      title: 'Expat Tax Services',
                      description:
                      'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income.',
                      assetImagePath:
                      'images/etsIcon.png', // Choose an appropriate icon
                    ),
                    SizedBox(width: 50,),
                    ServicePageCardTab(
                      title: 'Transfer Pricing',
                      description:
                      'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns.',
                      assetImagePath:
                      'images/tpIcon.png', // Choose an appropriate icon
                    ),



                  ],
                ),
              ),
            ),

            const SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/contact');
                      // Add your onPressed code here
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                          150, 60), // Set the width and height
                      primary: AppColor
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
                          'Contact Us ',
                          style: TextStyle(fontSize: 16,fontFamily: 'Inter',
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
              ],
            ),

            const SizedBox(height: 50,),

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
}
