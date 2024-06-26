import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import '../CalculatorComponants.dart';
import '../Componants.dart';
import '../colors.dart';

class ContactTablet extends StatefulWidget {
  const ContactTablet({super.key});

  @override
  State<ContactTablet> createState() => _ContactTabletState();
}

class _ContactTabletState extends State<ContactTablet> with TickerProviderStateMixin {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  String? _selectedTaxType;
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> addSubmission(BuildContext context) async {
    // Validate input fields
    if (_nameController.text.trim().isEmpty ||
        _phoneController.text.trim().isEmpty ||
        _emailController.text.trim().isEmpty ||
        _messageController.text.isEmpty ) {
      // Show an error message if any of the required fields are empty
      showRequiredFieldsSnackBar(context);
      return;
    }

    // Other validation logic can be added here

    // If all validations pass, proceed with the registration
    var url = "http://dev.workspace.cbs.lk/addSubmission.php";

    var data = {
      "name_": _nameController.text.trim(),
      "tax_type": _selectedTaxType,
      "email": _emailController.text.toString().trim(),
      "phone": _phoneController.text.toString().trim(),
      "tin": 'None',
      "message_": _messageController.text.toString().trim(),
      "from_": 'Contact Page',
      "device": 'Tablet',
      "active": '1',
      "read_status": '0',
      "actions": 'None',
    };

    http.Response res = await http.post(
      Uri.parse(url),
      body: data,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded",
      },
      encoding: Encoding.getByName("utf-8"),
    );

    if (res.statusCode.toString() == "200") {
      if (jsonDecode(res.body) == "true") {
        if (!mounted) return;
        showSuccessSnackBar(context);
        _clearFormInputs();// Show the success SnackBar
      } else {
        if (!mounted) return;
        snackBar(context, "Error", Colors.yellow);
      }
    } else {
      if (!mounted) return;
      snackBar(context, "Error", Colors.redAccent);
    }
  }

  void showSuccessSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.green, // Custom background color
      content: const Row(
        children: [
          Icon(Icons.check_circle_outline, color: Colors.white), // Custom icon
          SizedBox(width: 8), // Space between icon and text
          Expanded(
            child: Text(
              'Submission successful! We will contact you soon!',
              style: TextStyle(color: Colors.white, fontSize: 16), // Custom text style
            ),
          ),
        ],
      ),
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white, // Custom text color for the action
        onPressed: () {
          // Handle action (e.g., undo the submission)
        },
      ),
      duration: const Duration(seconds: 5), // Custom duration
      behavior: SnackBarBehavior.floating, // Make it floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Custom shape
      margin: const EdgeInsets.all(10), // Margin from the edges
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Custom padding
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _clearFormInputs() {
    // Reset the controllers
    _nameController.clear();
    _phoneController.clear();
    _emailController.clear();
    _messageController.clear();

    // Reset other stateful values to their initial states
    setState(() {
      _selectedTaxType = null;
    });
  }

  void showRequiredFieldsSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.red, // Custom background color for emphasis
      content: const Row(
        children: [
          Icon(Icons.warning_amber_outlined, color: Colors.white), // Custom icon for warning
          SizedBox(width: 8), // Space between icon and text
          Text(
            'Please fill in all required fields', // The message
            style: TextStyle(color: Colors.white, fontSize: 16), // Custom text style
          ),
        ],
      ),
      duration: const Duration(seconds: 5), // Custom duration
      behavior: SnackBarBehavior.floating, // Make it floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Custom shape
      margin: const EdgeInsets.all(10), // Margin from the edges
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Custom padding
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                          _buildPopupMenuItem('Services', false),
                          _buildPopupMenuItem('Resources', false),
                          _buildPopupMenuItem('Blog', false),
                          _buildPopupMenuItem('Contact', true),
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
                          child: const Text(
                            'Start Now',
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(130, 40),
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
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
                  opacity: _fadeAnimation,
                  child: Container(
                    height: 500,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/contactBackTab.png'),
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
                  children: <Widget>[
                    SlideTransition(
                      position: _slideAnimation,
                      child: const Text(
                        'CONTACT',
                        style: TextStyle(color: Colors.white, fontSize: 55, fontFamily: 'Candal'),
                      ),
                    ),
                    SlideTransition(
                      position: _slideAnimation,
                      child: const Text(
                        'Contact us for more details',
                        style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'Inter', fontWeight: FontWeight.w400),
                      ),
                    ),
                    // Add more widgets for additional information or buttons
                  ],
                ),
              ],
            ),

            Container(
              color: AppColor.lightGreen,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Text(
                        'Meet the Consultants',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 25),
                      child: Text(
                        'The team behind the digital transformation in taxation to ease of adhering to compliance obligation from anywhere any time',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 375,
                          height: 420,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                                'images/damith.png'), // Replace with your image path
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Damith Gangodawilage',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Founder/Chief Compliance',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                const url = 'https://www.facebook.com/damith.gangodawilage';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                padding: const EdgeInsets.all(9),
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: const Offset(0, 1), // Changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/fbIcon.png'), // Replace with your asset path
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                const email = 'https://accounts.google.com/servicelogin?hl=en-gb'; // Replace with your email address
                                if (await canLaunch(email)) {
                                  await launch(email);
                                } else {
                                  throw 'Could not launch $email';
                                }
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                padding: const EdgeInsets.all(7),
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: const Offset(0, 1), // Changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/emailIcon.png'), // Replace with your asset path
                              ),
                            ),
                            GestureDetector(
                              onTap: () async {
                                const url = 'https://twitter.com/yourprofile'; // Replace with your Twitter profile URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                padding: const EdgeInsets.all(9),
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: const Offset(0, 1), // Changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/twIcon.png'), // Replace with your asset path
                              ),
                            ),

                            GestureDetector(
                              onTap: () async {
                                const url = 'https://www.linkedin.com/in/asst-prof-dr-damith-gangodawilage-96699625/'; // Replace with your LinkedIn profile URL
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                padding: const EdgeInsets.all(11),
                                margin: const EdgeInsets.symmetric(horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.white, // Replace with your color
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
                                      spreadRadius: 1, // Spread radius
                                      blurRadius: 3, // Blur radius
                                      offset: const Offset(0, 1), // Changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/inIcon.png'), // Replace with your asset path
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10,),
                        Container(
                          padding: const EdgeInsets.all(16.0), // Add some padding
                          margin: const EdgeInsets.all(10),
                          color: Colors.white, // Background color for the container
                          child: const Text(
                            "Damith Gangodawilage, a prominent figure in Sri Lanka's fintech sphere and the visionary founder of Taxperts, also shines in the academic realm. As the Founder and Chief Compliance Officer of the country's pioneering company in digital tax compliance, he has steered Taxperts to revolutionize the way tax compliance for individuals, making significant strides in financial literacy and empowerment. \n\n"
                                "Beyond his professional accomplishments and recognition through prestigious awards like the eSwabhimani, NBQSA, and the National Ingenuity Award from SLASSCOM, Damith has extended his expertise into academia. His role as an educator underscores a deep commitment to nurturing future generations, blending practical industry insights with theoretical knowledge to shape well-rounded professionals. \n\n"
                                "Moreover, his leadership extends beyond his entrepreneurial ventures, having served as Vice President of the Chartered Institute of Taxation of Sri Lanka, Governing Council Member of AAT Sri Lanka, and Director and Treasurer of the Colombo Chamber of Commerce, highlights his dedication to both the financial and educational sectors, promoting economic and digital advancement in Sri Lanka.",
                            style: TextStyle(
                              fontSize: 16.0, // The font size
                              color: Colors.black, // Text color
                              height: 1.5, // Line height
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),


            const Padding(
              padding: EdgeInsets.symmetric(vertical: 35.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      child: Text(
                        'Contact Info',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Space items out evenly
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            ContactInfoTab(
                              icon: Icons.phone,
                              title: 'Call Us',
                              content: '077 714 8839\n011 242 4922',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 60,),
                            ContactInfoTab(
                              icon: Icons.email,
                              title: 'Mail Us',
                              content: 'connect@taxperts.lk',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            ContactInfoTab(
                              icon: Icons.location_on,
                              title: 'Address',
                              content:
                              'Taxperts Lanka Pvt. Ltd\nNo. 101, Olcott Mawatha\nColombo 11',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),



            Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.5, // Adjust the opacity as needed
                    child: Image.asset(
                      'images/formBack.png', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Form
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Get In Touch',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Expanded(flex: 1, child: Column()),
                          Expanded(
                            flex: 10,
                            child: Container(

                              child: Form(
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  runSpacing: 20,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Type of Taxes:',
                                            child: DropdownButtonFormField<String>(
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                              value: _selectedTaxType,
                                              items: [
                                                'Individual Income Tax (IIT)',
                                                'Corporate Income Tax (CIT)',
                                                'Partnership Income Tax (PIT) ',
                                                'Value Added Tax (VAT)',
                                                'Advance Personal Income Tax (APIT)',
                                                'Advance Income Tax (AIT)',
                                                'Capital Gain Tax (CGT)',
                                                'Simplified Value Added Tax (SVAT)',
                                                'Stamp Duty (SD)',
                                                'Other Taxes ',
                                                'Transfer Pricing',
                                                'International Double Taxation',
                                                'Expat Taxation',
                                                'Tax Advisory Services',
                                                'Return Compliance',
                                                'Social Security Contribution Levy (SSCL)',
                                                'With Holding Tax (WHT)'
                                              ].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _selectedTaxType = value;
                                                });// Update the state
                                              },
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Name:',
                                            child: TextFormField(
                                              controller: _nameController,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Phone Number:',
                                            child: TextFormField(
                                              controller: _phoneController,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Email Address:',
                                            child: TextFormField(
                                              controller: _emailController,
                                              decoration: const InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    CustomFormField(
                                      label: 'Message:',
                                      child: TextFormField(
                                        controller: _messageController,
                                        decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        maxLines: 3,
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            print('Type of taxes: $_selectedTaxType');
                                            print('Name: ${_nameController.text}');
                                            print('Email: ${_emailController.text}');
                                            print('Phone Number: ${_phoneController.text}');
                                            print('Message: ${_messageController.text}');

                                            addSubmission(context);/// Submit button action
                                            // Use the controllers to get the input values
                                          },
                                          child: const Text('Submit',style: TextStyle(fontSize: 18),),
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: const Size(130, 40), // Set the width and height
                                            primary: AppColor
                                                .buttonGreen, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(5), // Set the border radius
                                            ),
                                          ),)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Expanded(flex: 1, child: Column()),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/map300.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
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
}
