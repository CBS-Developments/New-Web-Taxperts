import 'package:flutter/material.dart';
import 'package:new_web_taxperts/Componants.dart';

import '../colors.dart';

class FormDesktop extends StatefulWidget {
  const FormDesktop({super.key});

  @override
  State<FormDesktop> createState() => _FormDesktopState();
}

class _FormDesktopState extends State<FormDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: 20.0), // Adjust padding as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Logo.png', // Replace with your asset path
                  height: 70, // Adjust the size as necessary
                ),
              ],
            ),
          ),

        Container(
          color: Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 160,vertical: 50),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 70,
                width: double.infinity,
                color: AppColor.darkTextGreen,
                child: Center(
                  child: Text(
                    'Request a callback',
                    style: TextStyle(
                        fontFamily: 'Inter',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              // Container(
              //   height: 100,
              //   color: Colors.grey.shade700,
              // ),
              // SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomFormField2(
                      label: 'Type of taxes:  ',
                      child: DropdownButtonFormField(
                        items: ['Individual Income Tax (IIT)',
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
                          'With Holding Tax (WHT)'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {},
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
                  SizedBox(width: 10.0),
                  Expanded(
                    child: CustomFormField2(
                      label: 'Name: ',
                      child: TextField(
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
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomFormField2(
                      label: 'Email: ',
                      child: TextField(
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
                  SizedBox(width: 20.0),
                  Expanded(
                    child: CustomFormField2(
                      label: 'Phone Number: ',
                      child: TextField(
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
                ],
              ),
              SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Do you have Taxpayer Identification Number (TIN)?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: 'Yes',
                        groupValue: null, // Replace _tinOption with your state variable
                        onChanged: (value) {

                        },
                      ),
                      Text(
                        'Yes',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      Radio(
                        value: 'No',
                        groupValue: null, // Replace _tinOption with your state variable
                        onChanged: (value) {

                        },
                      ),
                      Text(
                        'No',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                ),

            SizedBox(height: 20.0),
              CustomFormField2(
                label: 'Message: ',
                child: TextField(
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                  keyboardType: TextInputType.multiline,
                  minLines: 3,
                  maxLines: 5,
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Submit callback request
                  },
                  child: Text('Submit',style: TextStyle(
                    fontSize: 18
                  ),),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(
                        120, 40), // Set the width and height
                    primary: AppColor
                        .buttonGreen, // Set the background color to green
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5), // Set the border radius
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.0),
            ],
          ),
        ),
          WFooter(),
        ],
        ),
      ),
    );
  }
}
