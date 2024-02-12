import 'package:flutter/material.dart';

import '../Componants.dart';
import '../colors.dart';

class FormTablet extends StatefulWidget {
  const FormTablet({super.key});

  @override
  State<FormTablet> createState() => _FormTabletState();
}

class _FormTabletState extends State<FormTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: 20.0), // Adjust padding as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Logo.png', // Replace with your asset path
                  height: 50, // Adjust the size as necessary
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 80,vertical: 30),
            padding: EdgeInsets.symmetric(horizontal: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60,
                  width: double.infinity,
                  color: AppColor.darkTextGreen,
                  child: Center(
                    child: Text(
                      'Request a callback',
                      style: TextStyle(
                          fontSize: 22.0,
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
                      child: CustomFormFieldTab(
                        label: 'Type of taxes:  ',
                        child: DropdownButtonFormField(
                          items: ['Individual Income Tax (IIT)', 'Other'].map((String value) {
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
                    SizedBox(width: 20.0),
                    Expanded(
                      child: CustomFormFieldTab(
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
                      child: CustomFormFieldTab(
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
                      child: CustomFormFieldTab(
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
                  padding: const EdgeInsets.symmetric(horizontal:40.0),
                  child: Text(
                    'Do you have Taxpayer Identification Number (TIN)?',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:40.0),
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 'Yes',
                        groupValue: null,
                        onChanged: (value) {},
                      ),
                      Text('Yes',style: TextStyle(
                        fontSize: 18.0,
                      ),),
                      Radio(
                        value: 'No',
                        groupValue: null,
                        onChanged: (value) {},
                      ),
                      Text('No',style: TextStyle(
                        fontSize: 18.0,
                      ),),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                CustomFormFieldTab(
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

          WFooterTab(),
        ],
        ),
      ),
    );
  }
}
