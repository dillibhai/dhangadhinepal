import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dhangadhinepal/pages/homepage.dart';
import 'package:dhangadhinepal/pages/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/dhangadhi.JPG'),
        nextScreen: MainPage(),
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: 450.0,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Error: ${snapshot.error}"),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, streamSnapshot) {
              if (streamSnapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${streamSnapshot.error}"),
                  ),
                );
              }
              if (streamSnapshot.connectionState == ConnectionState.active) {
                //if user is loged in
                User _user = streamSnapshot.data;
                //if user is not loged in
                if (_user == null) {
                  return LoginPage();
                } else {
                  return HomePage();
                }
              }
              //checking authentication..
              else {
                return Scaffold(
                  body: Center(
                      child: Text(
                    "Checking Firebase Authentication...",
                  )),
                );
              }
            },
          );
        } else {
          return Scaffold(body: Center(child: Text("Initialization app...")));
        }
      },
    );
  }
}
