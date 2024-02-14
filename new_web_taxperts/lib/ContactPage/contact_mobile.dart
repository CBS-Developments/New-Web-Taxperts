import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import '../CalculatorComponants.dart';
import '../Componants.dart';
import '../colors.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  String? _selectedTaxType;

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _messageController.dispose();
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
      "device": 'Mobile',
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
      content: Row(
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
      duration: Duration(seconds: 5), // Custom duration
      behavior: SnackBarBehavior.floating, // Make it floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Custom shape
      margin: EdgeInsets.all(10), // Margin from the edges
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Custom padding
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
      content: Row(
        children: [
          Icon(Icons.warning_amber_outlined, color: Colors.white), // Custom icon for warning
          SizedBox(width: 8), // Space between icon and text
          Text(
            'Please fill in all required fields', // The message
            style: TextStyle(color: Colors.white, fontSize: 16), // Custom text style
          ),
        ],
      ),
      duration: Duration(seconds: 5), // Custom duration
      behavior: SnackBarBehavior.floating, // Make it floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Custom shape
      margin: EdgeInsets.all(10), // Margin from the edges
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Custom padding
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
                      image: AssetImage('images/contactBackTab.png'), // Replace with your image path
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
                          fontSize: 30,
                          fontFamily: 'Candal'
                      ),
                    ),
                    Text(
                      'Contact us for more details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Text(
                        'Meet the Consultants',
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 25),
                      child: Text(
                        'The team behind the digital transformation in taxation to ease of adhering to compliance obligation from anywhere any time',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 05),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 280,
                          height: 370,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                                'images/damith.png'), // Replace with your image path
                          ),
                        ),

                        Text(
                          'Damith Gangodawilage',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Founder/Chief Compliance',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 15),
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
                                      offset: Offset(0, 1), // Changes position of shadow
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
                                      offset: Offset(0, 1), // Changes position of shadow
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
                                      offset: Offset(0, 1), // Changes position of shadow
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
                                      offset: Offset(0, 1), // Changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Image.asset('images/inIcon.png'), // Replace with your asset path
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(16.0), // Add some padding
                          margin: EdgeInsets.all(10),
                          color: Colors.white, // Background color for the container
                          child: Text(
                            "Damith Gangodawilage, a prominent figure in Sri Lanka's fintech sphere and the visionary founder of Taxperts, also shines in the academic realm. As the Founder and Chief Compliance Officer of the country's pioneering company in digital tax compliance, he has steered Taxperts to revolutionize the way tax compliance for individuals, making significant strides in financial literacy and empowerment. \n\n"
                                "Beyond his professional accomplishments and recognition through prestigious awards like the eSwabhimani, NBQSA, and the National Ingenuity Award from SLASSCOM, Damith has extended his expertise into academia. His role as an educator underscores a deep commitment to nurturing future generations, blending practical industry insights with theoretical knowledge to shape well-rounded professionals. \n\n"
                                "Moreover, his leadership extends beyond his entrepreneurial ventures, having served as Vice President of the Chartered Institute of Taxation of Sri Lanka, Governing Council Member of AAT Sri Lanka, and Director and Treasurer of the Colombo Chamber of Commerce, highlights his dedication to both the financial and educational sectors, promoting economic and digital advancement in Sri Lanka.",
                            style: TextStyle(
                              fontSize: 14.0, // The font size
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      child: Text(
                        'Contact Info',
                        style: TextStyle(
                            fontSize: 26,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ),
                    SizedBox(
                      height: 20
                      ,
                    ),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Space items out evenly
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        ContactInfoMobile(
                          icon: Icons.phone,
                          title: 'Call Us',
                          content: '077 714 8839\n011 242 4922',
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        ContactInfoMobile(
                          icon: Icons.email,
                          title: 'Mail Us',
                          content: 'connect@taxperts.lk',
                        ),

                        SizedBox(
                          height: 20,
                        ),

                        ContactInfoMobile(
                          icon: Icons.location_on,
                          title: 'Address',
                          content:
                          'Taxperts Lanka Pvt. Ltd\nNo. 101, Olcott Mawatha\nColombo 11',
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
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Get In Touch',
                          style: TextStyle(
                              fontSize: 26,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: Container(

                              child: Form(
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  runSpacing: 20,
                                  children: [
                                    Expanded(
                                      child: CustomFormFieldMobile(
                                        label: 'Type of Taxes:',
                                        child: DropdownButtonFormField<String>(
                                          decoration: InputDecoration(
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
                                      child: CustomFormFieldMobile(
                                        label: 'Name:',
                                        child: TextFormField(
                                          controller: _nameController,
                                          decoration: InputDecoration(
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
                                      child: CustomFormFieldMobile(
                                        label: 'Phone Number:',
                                        child: TextFormField(
                                          controller: _phoneController,
                                          decoration: InputDecoration(
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
                                      child: CustomFormFieldMobile(
                                        label: 'Email Address:',
                                        child: TextFormField(
                                          controller: _emailController,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.white,
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    CustomFormFieldMobile(
                                      label: 'Message:',
                                      child: TextFormField(
                                        controller: _messageController,
                                        decoration: InputDecoration(
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

                                            addSubmission(context);// Submit button action
                                            // Use the controllers to get the input values
                                          },
                                          child: Text('Submit',style: TextStyle(fontSize: 18),),
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size(120, 40), // Set the width and height
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

                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/map300.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),

            WFooterMobile(),
          ],
        ),
      )
    );
  }
}
