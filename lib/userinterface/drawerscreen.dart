import 'package:dhangadhinepal/components/drawer_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffff5f6d),
          Color(0xffffc371),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      padding: EdgeInsets.only(top: 50, bottom: 70, left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/nepal.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dhangadhi Sub-metropolitan Kailali Nepal',
                      style: Constants.headingone),
                  SizedBox(height: 7.0),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.blue[900],
                      ),
                      SizedBox(width: 5.0),
                      Text('Active',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              )
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(element['title'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20))
                        ],
                      ),
                    ))
                .toList(),
          ),
          Row(
            children: [
              // Icon(
              //   Icons.settings,
              //   color: Colors.white,
              // ),
              // SizedBox(
              //   width: 10,
              // ),
              // Text(
              //   'Settings',
              //   style:
              //       TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   width: 10,
              // ),
              // Container(
              //   width: 2,
              //   height: 20,
              //   color: Colors.white,
              // ),
              SizedBox(
                width: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child: Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     FirebaseAuth.instance.signOut();
              //   },
              //   child: Text(
              //     'Logout',
              //     style: TextStyle(
              //         color: Colors.white, fontWeight: FontWeight.bold),
              //   ),
              // )
            ],
          )
        ],
      ),
    );
  }
}
