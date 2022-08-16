import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:xuberance_21/model/event.dart';

late String event, eventDesc, generalDes, phrase;
late String category;
late Range participants;
late String date, time;
late Grade grade;

class EventRules extends StatefulWidget {
  EventRules(Event _data) {
    event = _data.name;
    eventDesc = _data.description;
    generalDes = _data.rules;
    category = _data.category;
    phrase = _data.phrase;
    participants = _data.numberOfParticipants;
    date = _data.date;
    time = _data.time;
    grade = _data.grade;
  }

  @override
  _EventRulesState createState() => _EventRulesState();
}

class _EventRulesState extends State<EventRules> {
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
              SizedBox(height: 5),
              IconButton(
                onPressed: () {
                  _panelController1.close();
                },
                icon: Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ),
              Text(
                "Event Rules",
                style: TextStyle(
                    fontFamily: "heading",
                    fontSize: 0.07 * MediaQuery.of(context).size.width,
                    color: Colors.white),
              ),
              Expanded(
                flex: 2,
                child: Scrollbar(
                  controller: _scroll1,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 16, 30, 8),
                      child: Text(
                        "$generalDes",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "texts",
                            fontSize: 12,
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
              SizedBox(height: 5),
              IconButton(
                onPressed: () {
                  _panelController1.close();
                },
                icon: Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ),
              Text(
                "General Rules",
                style: TextStyle(
                    fontFamily: "heading",
                    fontSize: 0.07 * MediaQuery.of(context).size.width,
                    color: Colors.white),
              ),
              Expanded(
                child: Scrollbar(
                  controller: _scroll2,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 16, 20, 8),
                      child: Text(
                        "$eventDesc",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "texts",
                            fontSize: 12,
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

  Widget _Page2() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/sponsors_background.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Column(children: [
              Flexible(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Card(
                        color: Colors.lightBlueAccent.withOpacity(0.2),
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

  Widget _Page1() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/sponsors_background.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Stack(children: [
              Column(
                children: [
                  SizedBox(height: 0.4.sh),
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
                              children: [
                                SizedBox(height: 100),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("$date",
                                        style: TextStyle(
                                            fontFamily: "heading",
                                            fontSize: 0.055 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                            color: Colors.white)),
                                    SizedBox(width: 20.w)
                                  ],
                                ),
                                SizedBox(height: 5.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("$time",
                                        style: TextStyle(
                                            fontFamily: "heading",
                                            fontSize: 0.05 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                            color: Colors.white)),
                                    SizedBox(width: 20.w)
                                  ],
                                ),
                                SizedBox(height: 20.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 20.w),
                                    Text("$category",
                                        style: TextStyle(
                                            fontFamily: "heading",
                                            fontSize: 0.075 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                            color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 25.w),
                                    Text("$participants",
                                        style: TextStyle(
                                            fontFamily: "heading",
                                            fontSize: 0.055 *
                                                MediaQuery.of(context)
                                                    .size
                                                    .width,
                                            color: Colors.white)),
                                  ],
                                ),
                                SizedBox(height: 40.h),
                                Center(
                                    child: Image.asset(
                                        "images/eventRules.line.png",
                                        width: 0.85.sw)),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: Center(
                                    child: Text("$phrase",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: "heading",
                                          fontSize: 0.035 *
                                              MediaQuery.of(context).size.width,
                                          color: Colors.white,
                                        )),
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Stack(
                                  children: [
                                    Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          SizedBox(height: 30),
                                          Text(
                                            "Rules",
                                            style: TextStyle(
                                                fontFamily: "heading",
                                                fontSize: 15.sp,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: IconButton(
                                        onPressed: () {
                                          _panelController1.open();
                                        },
                                        icon: Icon(Icons.keyboard_arrow_up,
                                            color: Colors.white, size: 25.h),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 100)
                              ]))),
                ],
              ),
              Column(children: [
                Stack(
                  children: [
                    Hero(
                      tag: "$event",
                      child: Center(
                          child: Image.asset(
                              "images/vectors/vectors/$event.png",
                              height: 350,
                              width: 350)),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 225),
                        Center(
                            child: Image.asset("images/names/names/$event.png",
                                height: 300, width: 2000)),
                      ],
                    ),
                  ],
                ),
              ]),
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: true,
                elevation: 0,
              ),
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
