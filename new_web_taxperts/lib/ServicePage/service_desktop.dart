import 'package:flutter/material.dart';

import '../Componants.dart';
import '../colors.dart';

class ServiceDesktop extends StatefulWidget {
  const ServiceDesktop({super.key});

  @override
  State<ServiceDesktop> createState() => _ServiceDesktopState();
}

class _ServiceDesktopState extends State<ServiceDesktop> with TickerProviderStateMixin {
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
              height: 100,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
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
                      _buildMenuItem('Services', true, () {
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
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 40), // Set the width and height
                        primary: AppColor
                            .buttonGreen, // Set the background color to green
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(5), // Set the border radius
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
                                color: Colors.white, fontSize: 60, fontFamily: 'Candal'),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Serve you with Digital Tax Solutions',
                            style: TextStyle(
                                color: Colors.white, fontSize: 24, fontFamily: 'Inter', fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
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


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const SizedBox(height: 50,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // Example of a card, repeat as needed
                    ServicePageCard(
                      title: 'Tax Advisory Services',
                      description:
                      'Taxation is a critical factor for every citizen and business. We provide advise in planning your personal tax and business tax to maximize the benefits.',
                      assetImagePath: 'images/mPersonIcon.png',
                    ),
                    ServicePageCard(
                      title: 'Tax Return Service',
                      description:
                      'We offer efficient and effective services in calculating and filing tax returns of citizens and businesses in Sri Lanka and overseas.',
                      assetImagePath: 'images/trsIcon.png',
                    ),

                    // Add more cards...
                  ],
                ),
                const SizedBox(height: 50,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ServicePageCard(
                      title: 'Expat Tax Services',
                      description:
                      'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income.',
                      assetImagePath:
                      'images/etsIcon.png', // Choose an appropriate icon
                    ),
                    ServicePageCard(
                      title: 'Transfer Pricing',
                      description:
                      'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns.',
                      assetImagePath:
                      'images/tpIcon.png', // Choose an appropriate icon
                    ),



                  ],
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
                              200, 60), // Set the width and height
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
                              style: TextStyle(fontSize: 20,fontFamily: 'Inter',
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

                const WFooter(),


              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _buildMenuItem(String text, bool isSelected, VoidCallback onPressedAction) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0), // Adjust spacing as needed
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
