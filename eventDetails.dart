// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, no_logic_in_create_state

import 'dart:ui';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/cupertino.dart';


class Eventss extends StatefulWidget {
  String name;
  String about;
  String category;
  String location;
  String day;
  String time;
  String participants;
  String phrase;
  String rules;
  String link;
  String guidelines;

  Eventss(
      {Key? key,
      required this.name,
      required this.about,
      required this.category,
      required this.location,
      required this.day,
      required this.time,
      required this.participants,
      required this.phrase,
      required this.rules,
      required this.link,
      required this.guidelines})
      : super(key: key);

  @override
  State<Eventss> createState() => _EventssState(
      name: name,
      about: about,
      category: category,
      location: location,
      day: day,
      time: time,
      participants: participants,
      phrase: phrase,
      rules: rules,
      link: link,
      guidelines: guidelines);
}

class _EventssState extends State<Eventss> {
  String name;
  String about;
  String category;
  String location;
  String day;
  String time;
  String participants;
  String phrase;
  String rules;
  String link;
  String guidelines;
  _EventssState({
    required this.name,
    required this.about,
    required this.category,
    required this.location,
    required this.day,
    required this.time,
    required this.participants,
    required this.phrase,
    required this.rules,
    required this.link,
    required this.guidelines,
  });
  final PanelController _panelController1 = PanelController();
  final PageController _pageController2 = PageController();
  final ScrollController _scroll1 = ScrollController();
  final ScrollController _scroll2 = ScrollController();
  final String tag = "events";
  
  Widget _eventRules() {
    return Hero(
      tag: "$tag",
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
              IconButton(
                onPressed: () {
                  _panelController1.close();
                },
                icon: Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ),
              Text(
                "EVENT RULES",
                style: TextStyle(
                    fontFamily: "batmfa__",
                    fontSize: 0.07 * MediaQuery.of(context).size.width,
                    color: Colors.white),
              ),
              SizedBox(
                height: 0.01 * MediaQuery.of(context).size.height,
              ),
              Expanded(
                flex: 2,
                child: Scrollbar(
                  controller: _scroll1,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 16, 30, 8),
                      child: Text(
                        "$rules",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Outfit_Regular",
                            fontSize: 0.03 * MediaQuery.of(context).size.width,
                            wordSpacing: 1.2,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      _pageController2.jumpToPage(1);
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _generalRules() {
    return Hero(
      tag: "$tag",
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
              IconButton(
                onPressed: () {
                  _panelController1.close();
                },
                icon: Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ),
              Text(
                "GENERAL GUIDELINES",
                style: TextStyle(
                    fontFamily: "batmfa__",
                    fontSize: 0.07 * MediaQuery.of(context).size.width,
                    color: Colors.white),
              ),
              SizedBox(
                height: 0.01 * MediaQuery.of(context).size.height,
              ),
              Expanded(
                child: Scrollbar(
                  controller: _scroll2,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 16, 20, 8),
                      child: Text(
                        "$guidelines",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Outfit_Regular",
                            fontSize: 0.03 * MediaQuery.of(context).size.width,
                            wordSpacing: 1.2,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  _pageController2.jumpToPage(0);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _Page1() {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/xuberance22_logo_noText.png',
              height: 0.035 * MediaQuery.of(context).size.height,
            ),
            SizedBox(
              width: 0.015 * MediaQuery.of(context).size.width,
            ),
            Text(
              '$name',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 0.04 * MediaQuery.of(context).size.width,
                // fontWeight: FontWeight.bold,
                fontFamily: 'batmfa__',
              ),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/bgImage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 0.04 * MediaQuery.of(context).size.height,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      '$link',
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: 450.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 0.04 * MediaQuery.of(context).size.height),
                  Text(
                    '$name',
                    style: TextStyle(
                        fontSize: 0.0925 * MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  SizedBox(
                    height: 0.035 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    '$about',
                    style: TextStyle(
                        fontSize: 0.05 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  SizedBox(
                    height: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'CATEGORY: $category',
                    style: TextStyle(
                        fontSize: 0.0325 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  Divider(
                    height: 0.04 * MediaQuery.of(context).size.height,
                    color: Colors.grey[200],
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                    thickness: 0.0025 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'LOCATION: $location',
                    style: TextStyle(
                        fontSize: 0.04 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  SizedBox(
                    height: 0.045 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'DAY: $day',
                    style: TextStyle(
                        fontSize: 0.04 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  SizedBox(
                    height: 0.005 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'TIME: $time',
                    style: TextStyle(
                        fontSize: 0.04 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  SizedBox(
                    height: 0.005 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'PARTICIPANTS: $participants',
                    style: TextStyle(
                        fontSize: 0.04 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  Divider(
                    height: 0.04 * MediaQuery.of(context).size.height,
                    color: Colors.grey[200],
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                    thickness: 0.0025 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    '$phrase',
                    style: TextStyle(
                        fontSize: 0.035 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'batmfa__'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.052s),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                    height: 0.0425 *
                                        MediaQuery.of(context).size.height),
                                Text(
                                  "RULES",
                                  style: TextStyle(
                                      fontFamily: "batmfa__",
                                      fontSize: 0.055 *
                                          MediaQuery.of(context).size.width,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {
                            _panelController1.open();
                          },
                          icon: Icon(Icons.keyboard_arrow_up,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.075),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _Page2() {
    return Container(
        color: Color.fromARGB(255, 3, 12, 34),
        child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Column(children: [
              Flexible(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Card(
                        color: Color.fromARGB(255, 3, 12, 34).withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(70),
                                topRight: Radius.circular(70))),
                        child: PageView(
                            controller: _pageController2,
                            scrollDirection: Axis.horizontal,
                            children: [_eventRules(), _generalRules()]),
                      )))
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => Scaffold(
              extendBodyBehindAppBar: true,
              body: Container(
                child: SlidingUpPanel(
                  controller: _panelController1,
                  body: GestureDetector(
                      child: _Page1(),
                      onVerticalDragUpdate: (DragUpdateDetails) {
                        _panelController1.open();
                      }),
                  panel: _Page2(),
                  minHeight: 0,
                  maxHeight: 0.9 * MediaQuery.of(context).size.height,
                ),
              ),
            ));
  }
}
