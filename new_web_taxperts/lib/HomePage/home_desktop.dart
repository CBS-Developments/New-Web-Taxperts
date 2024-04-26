import 'package:flutter/material.dart';
import 'package:new_web_taxperts/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../Componants.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late AnimationController _slideController;
  late Animation<Offset> _slideAnimation;
  late AnimationController _slideFromLeftController;
  late Animation<Offset> _slideFromLeftAnimation;


  @override
  void initState() {
    super.initState();
    _slideFromLeftController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _slideFromLeftAnimation = Tween<Offset>(
      begin: const Offset(-1, 0), // Start from the left
      end: Offset.zero, // End at original position
    ).animate(CurvedAnimation(parent: _slideFromLeftController, curve: Curves.easeOut));

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
    _slideController = AnimationController(
        duration: const Duration(milliseconds: 1000),
    vsync: this,);
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // Start below
      end: Offset.zero, // End at original position
    ).animate(CurvedAnimation(parent: _slideController, curve: Curves.easeOut));
  }



  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.buttonGreen,

        onPressed: () {
          _scrollController.animateTo(
            0.0,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 400),
          );
        },
        child: const Icon(Icons.keyboard_arrow_up_rounded,size: 35,),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  const Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Icon(
                              Icons.email_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: SelectableText(
                              'connect@taxperts.lk',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  const Expanded(
                      flex: 3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: SelectableText(
                              '+94 777 148 839',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  const Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: SelectableText(
                              'No. 101, Olcott Mawatha, Colombo 11',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          )
                        ],
                      )),
                  const Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
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
                        GestureDetector(
                          onTap: ()async {
                            const url = 'https://www.facebook.com/taxpertsconnect/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // You can show an error message or handle the failure in your preferred way
                              print('Could not launch $url');
                            }
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/fbIcon.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()async {
                            const url = 'https://www.twitter.com';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // You can show an error message or handle the failure in your preferred way
                              print('Could not launch $url');
                            }
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/twIcon.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()async {
                            const url = 'https://www.linkedin.com/company/taxpertsconnect/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // You can show an error message or handle the failure in your preferred way
                              print('Could not launch $url');
                            }
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/inIcon.png'),
                          ),
                        ),
                        GestureDetector(
                          onTap: ()async {
                            const url = 'https://www.youtube.com/@taxperts';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              // You can show an error message or handle the failure in your preferred way
                              print('Could not launch $url');
                            }
                          },
                          child: Container(
                            width: 35,
                            height: 35,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/ytIcon.png'),
                          ),
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
                      _buildMenuItem('Home', true, () {
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
                        fixedSize: const Size(130, 40), backgroundColor: AppColor
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
            SizedBox(
              height: 700,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: AnimatedOpacity(
                      opacity: _opacityAnimation.value,
                      duration: const Duration(seconds: 2),
                      child: Image.asset(
                        'images/bach600.png', // Replace with your background image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.0,),
                            child: SlideInAnimation(
                              delay: 100,
                              child: FadeInText(
                                text: 'STAY CONNECTED WITH TAXPERTS',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                            child: SlideInAnimation(
                              delay: 100,
                              child: Text(
                                'DO YOUR TAXES RIGHT',
                                style: TextStyle(
                                  fontSize: 76,
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
                                  fontSize: 20,
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
                                  fontSize: 20,
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
                                      color: AppColor.buttonGreen, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 20),
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
                                          240, 60), backgroundColor: AppColor
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
                                const SizedBox(width: 16),
                                SlideInAnimation(
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.of(context).pushNamed('/tax-calculator');// Add your onPressed code here
                                    },
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors
                                          .green, fixedSize: const Size(
                                          240, 60), // Set the width and height
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
                                            fontSize: 20,
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w500,
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
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Taxpert always behind you to meet your compliance obligations',
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // Adjust to center if you want them closer but not touching
              children: [
                Container(
                  width: 300,
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/Indtax1.png'),
                ),
                const SizedBox(width: 20), // Control the space between the first and second container
                Container(
                  width: 300,
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/bTax1.png'),
                ),
                const SizedBox(width: 20), // Control the space between the second and third container
                Container(
                  width: 300,
                  height: 380,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/Otax1.png'),
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
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: SlideInAnimation(
                          delay: 200,
                          child: Text(
                            'Award Winning Taxation-as-a-Service Company in Sri Lanka',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(flex: 2, child:  Image.asset(
                            'images/swarnawahini.png', // Replace with your asset path
                            height: 300, ),),
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
              padding: EdgeInsets.only(left: 25.0, top: 5, bottom: 20),
              child: Row(
                children: [
                  // Icon(Icons.line_axis),
                  Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Text(
                      'We believe in doing your taxes right. We’re committed to serving you assuring your comfort in tax compliance decision',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
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
                            description:
                                'As an expat employee, you need to pay taxes for the income you received from Sri Lanka and file the return of income.',
                            assetImagePath:
                                'images/etsIcon.png', // Choose an appropriate icon
                          ),
                          ServiceCard(
                            title: 'Transfer Pricing',
                            description:
                                'Transfer pricing regulation in Sri Lanka is increasing and businesses with associated entities are required to file transfer pricing returns.',
                            assetImagePath:
                                'images/tpIcon.png', // Choose an appropriate icon
                          ),

                          // Add more cards...
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            VisibilityDetector(
              key: const Key('whyCh-image'), // Ensure a unique key
              onVisibilityChanged: (VisibilityInfo info) {
                if (info.visibleFraction > 0) {
                  _slideController.forward(); // Trigger the animation when visible
                }
              },
              child: SlideTransition(
                position: _slideAnimation,
                child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'images/WhyCh.png',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
        const WFooter(),



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
          foregroundColor: isSelected ? AppColor.headingDarkGreen : Colors.black, textStyle: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
        child: Text(text),
      ),
    );
  }

}
