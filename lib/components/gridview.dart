import 'package:dhangadhinepal/sections/accident.dart';
import 'package:dhangadhinepal/sections/covid.dart';
import 'package:dhangadhinepal/sections/desaster.dart';
import 'package:dhangadhinepal/sections/fightdesc.dart';
import 'package:dhangadhinepal/sections/firedesc.dart';
import 'package:dhangadhinepal/sections/sickdesc.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Gridview extends StatelessWidget {
  const Gridview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.0,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FireDesc()));
            },
            child: Card(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/fire.JPG",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 45,
                    child: Text(
                      "Fire Report",
                      style: Constants.gridtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FightDesc()));
            },
            child: Card(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/fight.JPG",
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 45,
                    child: Text(
                      "Fight Report",
                      style: Constants.gridtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SickDesc()));
            },
            child: Card(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/sick.JPG",
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 45,
                    child: Text(
                      "Sick Report",
                      style: Constants.gridtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AccidentDesc()));
            },
            child: Card(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/accident.JPG",
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 45,
                    child: Text(
                      "Accident Report",
                      style: Constants.gridtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DesasterDesc()));
            },
            child: Card(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/natural.JPG",
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 45,
                    child: Text(
                      "Desaster Report",
                      style: Constants.gridtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CovidDesc()));
            },
            child: Card(
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/covid.jpg",
                    height: 180.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 45,
                    child: Text(
                      "Covid 19 Report",
                      style: Constants.gridtitle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
