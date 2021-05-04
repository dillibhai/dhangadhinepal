import 'package:dhangadhinepal/components/imageslide.dart';
import 'package:dhangadhinepal/contacts/fightcontact.dart';
import 'package:flutter/material.dart';

class FightDesc extends StatefulWidget {
  @override
  _FightDescState createState() => _FightDescState();
}

class _FightDescState extends State<FightDesc> {
  final List<String> imageList = [
    "assets/images/fight.JPG",
    "assets/images/police.jpg",
    "assets/images/policetwo.jpg",
    "assets/images/policethree.jpg",
    "assets/images/policefour.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffff5f6d),
            title: Text("Police Services Description"),
            centerTitle: true),
       body: SingleChildScrollView(
            child: Column(children: [
          Container(
              // color: Color(0xffff5f6d),
              padding: const EdgeInsets.only(top: 20.0),
              child: ImageSliders(imageList: imageList)),
          FightContact(),
        ])));
  }
}

