import 'package:dhangadhinepal/components/imageslide.dart';
import 'package:dhangadhinepal/contacts/firecontact.dart';
import 'package:flutter/material.dart';

class FireDesc extends StatefulWidget {
  @override
  _FireDescState createState() => _FireDescState();
}

class _FireDescState extends State<FireDesc> {
  final List<String> imageList = [
    "assets/images/fire.JPG",
    "assets/images/truckone.jpg",
    "assets/images/trucktwo.jpg",
    "assets/images/truckthree.jpg",
    "assets/images/plane.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // backgroundColor: Color(0xffff5f6d),
            title: Text("Fire Services Description"),
            centerTitle: true),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              // color: Color(0xffff5f6d),
              padding: const EdgeInsets.only(top: 20.0),
              child: ImageSliders(imageList: imageList)),
          Contact(),
        ])));
  }
}
