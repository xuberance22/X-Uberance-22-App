import 'package:flutter/material.dart';

import 'main_firebase.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ApplicationInit(),
  );
}

// Initiates firebase and the rest of the application.
class ApplicationInit extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<ApplicationInit> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FirebaseInit(),
      ),
    );
  }
}