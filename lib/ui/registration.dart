import 'dart:ui';

import 'package:xuberance_21/ui/registrationEvents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MaterialApp(home: Registration()));
}

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Widget _title() {
    return Container(
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Text(
          "Registrations",
          style: TextStyle(
            fontFamily: "Tesla",
            fontSize: 0.1 * MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ));
  }

  Widget _page1() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/background.png"),
        fit: BoxFit.cover,
      )),
      child: Container(
        color: Colors.black.withOpacity(0.3),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              SizedBox(height: 100),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Card(
                  color: Colors.lightBlueAccent.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(70))),
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Text(
                          "Events",
                          style: TextStyle(
                            fontFamily: "Batman Forever",
                            fontSize: 0.04 * MediaQuery.of(context).size.height,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 30),
                        SizedBox(
                          height: 800,
                          width: 300,
                          child: ListView(
                            children: [
                              for (int i = 0; i < 20; i++)
                                ListTile(
                                  title: Text(
                                    "X-Travagance",
                                    style: TextStyle(
                                      fontFamily: "Futura",
                                      fontSize: 25,
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                registrationEvents()));
                                  },
                                )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 1000,
                        )
                      ]),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: _title(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: _page1(),
    );
  }
}
