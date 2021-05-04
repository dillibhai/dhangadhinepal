import 'package:dhangadhinepal/components/imageslide.dart';
import 'package:dhangadhinepal/contacts/sickcontact.dart';
import 'package:flutter/material.dart';

class SickDesc extends StatefulWidget {
  @override
  _SickDescState createState() => _SickDescState();
}

class _SickDescState extends State<SickDesc> {
  final List<String> imageList = [
    "assets/images/sick.JPG",
    "assets/images/ambulance.jpg",
    "assets/images/hospital.jpg",
    "assets/images/hospitalone.jpg",
    "assets/images/hospitaltwo.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffff5f6d),
            title: Text("Hospital Services Description"),
            centerTitle: true),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              // color: Color(0xffff5f6d),
              padding: const EdgeInsets.only(top: 20.0),
              child: ImageSliders(imageList: imageList)),
          SickContact(),
        ])));
  }
}
