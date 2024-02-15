import 'package:flutter/material.dart';

import '../Componants.dart';
import '../colors.dart';

class ServiceMobile extends StatefulWidget {
  const ServiceMobile({super.key});

  @override
  State<ServiceMobile> createState() => _ServiceMobileState();
}

class _ServiceMobileState extends State<ServiceMobile> with TickerProviderStateMixin {
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


            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Background image
                Container(
                  height: 300, // Set the height of the header
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'images/ServiceBack.png'), // Replace with your image path
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
                                color: Colors.white, fontSize: 40, fontFamily: 'Candal'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Serve you with Digital Tax Solutions',
                            style: TextStyle(
                                color: Colors.white, fontSize: 18, fontFamily: 'Inter', fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
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

            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Example of a card, repeat as needed
                    ServicePageCardMobile(
                      title: 'Tax Advisory Services',
                      description:
                      'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits.',
                      assetImagePath: 'images/mPersonIcon.png',
                    ),
                    SizedBox(width: 50,),
                    ServicePageCardMobile(
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
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ServicePageCardMobile(
                      title: 'Expat Tax Services',
                      description:
                      'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income.',
                      assetImagePath:
                      'images/etsIcon.png', // Choose an appropriate icon
                    ),
                    SizedBox(width: 50,),
                    ServicePageCardMobile(
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

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/contact');
                      // Add your onPressed code here
                    },
                    child: Row(
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
                          size: 16,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                          150, 45), // Set the width and height
                      primary: AppColor
                          .buttonGreen, // Set the background color to green
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5), // Set the border radius
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 30,),

            WFooterMobile(),
          ],
        ),
      )
    );
  }
}
