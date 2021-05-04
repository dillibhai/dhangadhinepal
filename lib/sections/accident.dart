import 'package:dhangadhinepal/components/imageslide.dart';
import 'package:dhangadhinepal/contacts/accidentcontact.dart';
import 'package:flutter/material.dart';

class AccidentDesc extends StatefulWidget {
  @override
  _AccidentDescState createState() => _AccidentDescState();
}

class _AccidentDescState extends State<AccidentDesc> {
  final List<String> imageList = [
    "assets/images/accident.JPG",
    "assets/images/ambulance.jpg",
    "assets/images/hospitalone.jpg",
    "assets/images/police.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffff5f6d),
            title: Text("Accident Services Description"),
            centerTitle: true),
       body: SingleChildScrollView(
            child: Column(children: [
          Container(
              // color: Color(0xffff5f6d),
              padding: const EdgeInsets.only(top: 20.0),
              child: ImageSliders(imageList: imageList)),
          AccidentContact(),
        ])));
  }
}
