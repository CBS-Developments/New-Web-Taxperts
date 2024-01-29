import 'package:flutter/material.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key});

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(color: Colors.black),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(Icons.email_rounded,color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('connect@taxperts.lk',style: TextStyle(fontSize: 15,color: Colors.white),),
                        )
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Row(
                      children: [
                        Icon(Icons.phone_in_talk_rounded,color: Colors.white,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('+94 777 148 839',style: TextStyle(fontSize: 15,color: Colors.white),),
                        )
                      ],
                    )),
                Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Icon(Icons.location_on,color: Colors.white,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('No. 101, Olcott Mawatha, Colombo 11',style: TextStyle(fontSize: 15,color: Colors.white),),
                        )
                      ],
                    )),
                Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        Icon(Icons.watch_later_rounded,color: Colors.white,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Monday - Friday: 8.30 - 17.30',style: TextStyle(fontSize: 15,color: Colors.white),),
                        )
                      ],
                    )),
                Expanded(
                  flex: 3,
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Image.asset('images/fbIcon.png'),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Image.asset('images/twIcon.png'),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Image.asset('images/inIcon.png'),
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Image.asset('images/ytIcon.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(child: Text('Desktop')),

          Container(
            width: double.infinity,
            height: 100,
            color: Colors.black87,
          )
        ],
      ),
    );
  }
}
