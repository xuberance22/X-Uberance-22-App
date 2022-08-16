import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xuberance_21/ui/login.dart';

class HomePage extends StatefulWidget {
  late final FirebaseFirestore firestoreInstance;
  late final FirebaseAuth authInstance;

  HomePage({
    required this.firestoreInstance,
    required this.authInstance,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _lst = [LogInPage()];
  @override
  Widget build(BuildContext context) {
    return _testButtonColumn(context);
  }

  Column _testButtonColumn(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        ElevatedButton(
          child: Text("LoginPage"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                // Need to provide `FirebaseFirestore` to each route which needs
                // to use it since flutter builds a seperate tree for each route
                // instead of making it a child.
                builder: (_) => _multipleProvidersWithChild(
                  MaterialApp(
                    home: Scaffold(
                      body: _lst[0],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        ElevatedButton(
          child: Text("EventDetails"),
          onPressed: () {},
        ),
        ElevatedButton(
          child: Text("X-Bet"),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _multipleProvidersWithChild(Widget child) {
    return MultiProvider(
      providers: [
        Provider<FirebaseFirestore>.value(value: widget.firestoreInstance),
        Provider<FirebaseAuth>.value(value: widget.authInstance),
      ],
      child: child,
    );
  }
}
