import 'dart:html';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImgRtr extends StatefulWidget {
  String name;
  String designation;
  String about;
  String link;

  ImgRtr(
      {Key? key,
      required this.name,
      required this.designation,
      required this.about,
      required this.link})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<ImgRtr> createState() => _ImgRtrState(
      name: name, designation: designation, about: about, link: link);
}

class _ImgRtrState extends State<ImgRtr> {
  String name;
  String designation;
  String about;
  String link;
  _ImgRtrState(
      {required this.name,
      required this.designation,
      required this.about,
      required this.link});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  scrollable: true,
                  backgroundColor: Color.fromARGB(255, 3, 12, 34),
                  content: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 0.25 * MediaQuery.of(context).size.width,
                        width: 0.25 * MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'lib/assets/xuberance22_logo_noText.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 0.02 * MediaQuery.of(context).size.height),
                      Text(
                        name,
                        style: TextStyle(
                          fontFamily: "batmfa__",
                          fontSize: 0.05 * MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          height: 0.015 * MediaQuery.of(context).size.height),
                      Text(
                        designation,
                        style: TextStyle(
                          fontFamily: "batmfa__",
                          fontSize: 0.045 * MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                          height: 0.015 * MediaQuery.of(context).size.height),
                      Text(
                        about,
                        style: TextStyle(
                          fontSize: 0.035 * MediaQuery.of(context).size.width,
                          fontFamily: "Outfit_Regular",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'OK',
                        style: TextStyle(
                          fontSize: 0.055 * MediaQuery.of(context).size.width,
                          fontFamily: 'batmfa__',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            },
            child: Container(
              height: 0.3 * MediaQuery.of(context).size.width,
              width: 0.3 * MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/assets/xuberance22_logo_noText.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
            height: 0.02 * MediaQuery.of(context).size.height,
            width: 0.0025 * MediaQuery.of(context).size.width),
      ],
    );
  }
}
