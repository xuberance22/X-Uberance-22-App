import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'App/home.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: "X-Uberance '22",
      options: const FirebaseOptions(
          apiKey: "AIzaSyCsYQCZyDlngfvwQyNDwgaGaubEOR5i1zY",
          appId: "1:859313741550:web:b70bd0d9b5bad15fc8ddff",
          messagingSenderId: "859313741550",
          projectId: "x-uberance--22"));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "X-Uberance '22",
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(
                "Sorry! We are experiencing some technical issues, check back in sometime!");
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return const Home();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
