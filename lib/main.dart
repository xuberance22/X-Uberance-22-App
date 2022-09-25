import 'package:flutter/material.dart';
import 'App/home.dart';
//import 'App/event.dart';
import 'App/schedule.dart';
//import 'App/registration.dart';
import 'App/eventOnStage.dart';
import 'App/schedule.dart';
import 'App/teams.dart';
import 'App/aboutus.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
     '/': (context) => Home(),
      '/events': (context) => EventsOnStage(),
      '/schedule': (context) => Schedule(day: 1),
      '/Teams': (context) => Team(),
      '/Sponsors': (context) => Home(),
      '/About_Us': (context) => AboutUs(),
      // '/X-ENTER': (context) => Home(),
      // '/X-GOAL': (context) => Home(),
      // '/X-PULL': (context) => Home(),
      // '/X-HOOP': (context) => Home(),
      // '/X-ABHINOY': (context) => Home(),
      // '/X-HOP': (context) => Home(),
      // '/X-CALIBRE': (context) => Home(),
      // '/X-GAANA': (context) => Home(),
      // '/X-PONG': (context) => Home(),
      // '/X-DROP': (context) => Home(),
      // '/X-60': (context) => Home(),
      // '/X-30': (context) => Home(),
      // '/X-VOGUE': (context) => Home(),
      // '/X-CODE': (context) => Home(),
      // '/X-SNAP': (context) => Home(),
      // '/X-MONTAGE': (context) => Home(),
      // '/X-GOAL': (context) => Home(),
      // '/X-WICKET': (context) => Home(),
      // '//X-MATE': (context) => Home(),
      // '/X-SPLASH': (context) => Home(),
      // '/X-PULL': (context) => Home(),
      // '/X-O☐Δ': (context) => Home(),
      // '/X-RHYME': (context) => Home(),
      // '/X-PUN': (context) => Home(),
      // '/X-QUIZITE': (context) => Home(),
      // '/X-RAGA': (context) => Home(),
      // '/X-TRIAL': (context) => Home(),
      // '/X-ACOUSTIC': (context) => Home(),
      // '/X-CODE': (context) => Home(),
      // '/X-SNAP': (context) => Home(),
      // '/X-MONTAGE': (context) => Home(),
      // '/X-SPIKE': (context) => Home(),
      // '/X-CALIBRE': (context) => Home(),
      // '/X-BID': (context) => Home(),
      // '/X-ACT': (context) => Home(),
      // '/X-HUNT': (context) => Home(),
      // '/X-TRAVAGANCE': (context) => Home(),
      // '/X-CODE': (context) => Home(),
      // '/X-UENT': (context) => Home(),
    }
  ));
}

