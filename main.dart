import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/event.dart';
import 'pages/schedule.dart';
import 'pages/registration.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
     '/': (context) => Home(),
      '/events': (context) => event(),
      '/schedule': (context) => Schedule(),
      '/registration': (context) => registration(),
    }
  ));
}

