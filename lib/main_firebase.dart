import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:xuberance_21/ui/Intro.dart';
import 'package:xuberance_21/ui/menu.dart';
import 'package:xuberance_21/ui/testing_homepage.dart';

class FirebaseInit extends StatefulWidget {
  @override
  _FirebaseInitState createState() => _FirebaseInitState();
}

class _FirebaseInitState extends State<FirebaseInit> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print("startError --|" + snapshot.error.toString());
          return backgroundWithChild(
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                child: Text(
                  "The app has experienced an error. Kindly restart the app. If the issue persists, raise the issue at xuberance21@gmail.com.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            home: VideoSplashScreen(
              firestoreInstance: FirebaseFirestore.instance,
              authInstance: FirebaseAuth.instance,
            ),
          );
        } else {
          return Center(
              child: backgroundWithChild(
            CircularProgressIndicator(),
          ));
        }
      },
    );
  }

  Widget backgroundWithChild(Widget child) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/sponsors_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
    ;
  }
}
