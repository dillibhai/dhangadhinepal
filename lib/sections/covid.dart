import 'package:dhangadhinepal/components/imageslide.dart';
import 'package:dhangadhinepal/contacts/covidcontact.dart';
import 'package:flutter/material.dart';

class CovidDesc extends StatefulWidget {
  @override
  _CovidDescState createState() => _CovidDescState();
}

class _CovidDescState extends State<CovidDesc> {
  final List<String> imageList = [
    "assets/images/covid.jpg",
    "assets/images/ambulance.jpg",
    "assets/images/hospital.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffff5f6d),
            title: Text("Covid 19(Corona) Description"),
            centerTitle: true),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              // color: Color(0xffff5f6d),
              padding: const EdgeInsets.only(top: 20.0),
              child: ImageSliders(imageList: imageList)),
          CovidContact(),
        ])));
  }
}
