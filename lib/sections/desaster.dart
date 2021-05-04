import 'package:dhangadhinepal/components/imageslide.dart';
import 'package:dhangadhinepal/contacts/desastercontact.dart';
import 'package:flutter/material.dart';

class DesasterDesc extends StatefulWidget {
  @override
  _DesasterDescState createState() => _DesasterDescState();
}

class _DesasterDescState extends State<DesasterDesc> {
  final List<String> imageList = [
    "assets/images/natural.JPG",
    "assets/images/desaster.jpg",
    "assets/images/desasterone.jpg",
    "assets/images/desastertwo.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffff5f6d),
            title: Text("Natural Desaster Description"),
            centerTitle: true),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              // color: Color(0xffff5f6d),
              padding: const EdgeInsets.only(top: 20.0),
              child: ImageSliders(imageList: imageList)),
          DesasterContact(),
        ])));
  }
}
