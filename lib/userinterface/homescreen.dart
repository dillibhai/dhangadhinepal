import 'package:dhangadhinepal/components/gridview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// import 'grildlist.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor),
        duration: Duration(milliseconds: 300),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              // color: Colors.red,
              // margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerOpen
                      ? IconButton(
                          icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            setState(() {
                              xOffset = 0;
                              yOffset = 0;
                              scaleFactor = 1;
                              isDrawerOpen = false;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xOffset = 230;
                              yOffset = 150;
                              scaleFactor = 0.6;
                              isDrawerOpen = true;
                            });
                          }),
                  Column(
                    children: [
                      Text(
                        'Emergency Response system',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.red),
                          Text('Dhangadhi sub-metropolitan kailali'),
                        ],
                      ),
                    ],
                  ),
                  // CircleAvatar(
                  //   radius: 30.0,
                  //   backgroundImage: AssetImage("assets/images/nepal.png"),
                  // ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, right: 20.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage("assets/images/nepal.png"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          child: Icon(
                            Icons.logout,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 0.0),
            Gridview(),
          ],
        ),
      ),
    );
  }
}
