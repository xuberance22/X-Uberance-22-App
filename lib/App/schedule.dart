// ignore_for_file: no_logic_in_create_state, prefer_const_constructors, prefer_contains, non_constant_identifier_names, unused_element, sort_child_properties_last

import 'package:flutter/material.dart';
//import 'eventDetails.dart';
import 'constants.dart' as c;
import 'package:page_transition/page_transition.dart';

class Schedule extends StatefulWidget {
  int day = 0;
  Schedule({Key? key, required this.day}) : super(key: key);

  @override
  State<Schedule> createState() => _ScheduleState(day: day);
}

class _ScheduleState extends State<Schedule> {
  int day = 0;
  _ScheduleState({required this.day});
  Future<void> navigateToDay(context, int a) async {
    Navigator.push(
        context,
        PageTransition(
          child: Schedule(day: a),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
        ));
  }

  Future<void> navigateToDescription(context, String a) async {
    late Widget ret;
    if ((c.SportingDay1.indexOf(a) > -1) ||
        (c.SportingDay2.indexOf(a) > -1) ||
        (c.SportingDay3.indexOf(a) > -1)) {
      ret = c.Sporting[c.Sporting1.indexOf(a)];
    } else if ((c.OffStageDay1.indexOf(a) > -1) ||
        (c.OffStageDay2.indexOf(a) > -1) ||
        (c.OffStageDay3.indexOf(a) > -1)) {
      ret = c.OffStage[c.Offstage1.indexOf(a)];
    } else if ((c.OnStageDay1.indexOf(a) > -1) ||
        (c.OnStageDay2.indexOf(a) > -1) ||
        (c.OnStageDay3.indexOf(a) > -1)) {
      ret = c.OnStage[c.Onstage1.indexOf(a)];
    }

    Navigator.pushReplacement(
        context,
        PageTransition(
          child: ret,
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
        ));
  }

  Widget _ListTile(event, about, time) {
    return Container(
      child: TextButton(
        onPressed: () {
          navigateToDescription(context, event);
        },
        child: ListTile(
          title: Text(
            '$event',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Xavier1',
                fontSize: MediaQuery.of(context).size.width * 0.04),
          ),
          subtitle: Text(
            '$about',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Xavier3',
                fontSize: MediaQuery.of(context).size.width * 0.02),
          ),
          trailing: Text(
            '$time',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Xavier2',
                fontSize: MediaQuery.of(context).size.width * 0.04),
          ),
        ),
      ),
      height: .12 * MediaQuery.of(context).size.height,
    );
  }

  Widget _ListTileDisplay(name, about, time) {
    double height;
    if (day == 1 || day == 2) {
      height = 1.25 * MediaQuery.of(context).size.height;
    } else {
      height = 0.55 * MediaQuery.of(context).size.height;
    }
    return Container(
      height: height,
      child: Column(
        children: [
          for (int i = 0; i < name.length; i++)
            Flexible(
              child: _ListTile(name[i], about[i], time[i]),
            ),
          SizedBox(
            height: 0.0025 * MediaQuery.of(context).size.height,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List Events = [];
    List Timing = [];
    List About = [];
    String date = "";
    if (day == 1) {
      Events = c.Day1Event;
      Timing = c.Day1Timing;
      About = c.Day1About;
      date = "14TH";
    }
    if (day == 2) {
      Events = c.Day2Event;
      Timing = c.Day2Timing;
      About = c.Day2About;
      date = "15TH";
    }
    if (day == 3) {
      Events = c.Day3Event;
      Timing = c.Day3Timing;
      About = c.Day3About;
      date = "16TH";
    }
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        title: Text(
              'SCHEDULE',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 0.04 * MediaQuery.of(context).size.width,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Xavier1',
              ),
            ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        '$date',
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                      SizedBox(
                        height: 0.0,
                      ),
                      Text(
                        'OCTOBER',
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: MediaQuery.of(context).size.width * 0.055,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Card(
                  //   margin: EdgeInsets.symmetric(
                  //       horizontal: MediaQuery.of(context).size.width * 0.0125,
                  //       vertical: 0.0),
                  //   color: Color.fromARGB(255, 3, 12, 34),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           ElevatedButton(
                  //             onPressed: () {
                  //               navigateToDay(context, 1);
                  //             },
                  //             style: ElevatedButton.styleFrom(
                  //                 primary: Color.fromARGB(255, 3, 12, 34),
                  //                 padding: EdgeInsets.all(7.5)),
                  //             child: Text(
                  //               'DAY 1',
                  //               style: TextStyle(
                  //                   color: Colors.grey[200],
                  //                   fontSize:
                  //                   MediaQuery.of(context).size.width *
                  //                       0.055,
                  //                   fontFamily: 'Xavier1'),
                  //             ),
                  //           ),
                  //           ElevatedButton(
                  //             onPressed: () {
                  //               navigateToDay(context, 2);
                  //             },
                  //             style: ElevatedButton.styleFrom(
                  //                 primary: Color.fromARGB(255, 3, 12, 34),
                  //                 padding: EdgeInsets.all(7.5)),
                  //             child: Text(
                  //               'DAY 2',
                  //               style: TextStyle(
                  //                   color: Colors.grey[200],
                  //                   fontSize:
                  //                   MediaQuery.of(context).size.width *
                  //                       0.055,
                  //                   fontFamily: 'Xavier1'),
                  //             ),
                  //           ),
                  //           ElevatedButton(
                  //             onPressed: () {
                  //               navigateToDay(context, 3);
                  //             },
                  //             style: ElevatedButton.styleFrom(
                  //                 primary: Color.fromARGB(255, 3, 12, 34),
                  //                 padding: EdgeInsets.all(7.5)),
                  //             child: Text(
                  //               'DAY 3',
                  //               style: TextStyle(
                  //                   color: Colors.grey[200],
                  //                   fontSize:
                  //                   MediaQuery.of(context).size.width *
                  //                       0.055,
                  //                   fontFamily: 'Xavier1'),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //       Divider(
                  //         height: 5.0,
                  //         color: Colors.blue[900],
                  //         thickness: 2.5,
                  //       ),
                  //       SizedBox(
                  //           height:
                  //           0.00125 * MediaQuery.of(context).size.height),
                  //       day == 1
                  //           ? _ListTileDisplay(
                  //           c.Day1Event, c.Day1About, c.Day1Timing)
                  //           : day == 2
                  //           ? _ListTileDisplay(
                  //           c.Day2Event, c.Day2About, c.Day2Timing)
                  //           : _ListTileDisplay(
                  //           c.Day3Event, c.Day3About, c.Day3Timing),
                  //     ],
                  //   ),
                  // ),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.0125,
                        vertical: 0.0),
                    color: Color.fromARGB(255, 3, 12, 34),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                navigateToDay(context, 1);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 3, 12, 34),
                                  padding: EdgeInsets.all(7.5)),
                              child: Text(
                                'DAY 1',
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize:
                                    MediaQuery.of(context).size.width *
                                        0.055,
                                    fontFamily: 'Xavier1'),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                navigateToDay(context, 2);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 3, 12, 34),
                                  padding: EdgeInsets.all(7.5)),
                              child: Text(
                                'DAY 2',
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize:
                                    MediaQuery.of(context).size.width *
                                        0.055,
                                    fontFamily: 'Xavier1'),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                navigateToDay(context, 3);
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 3, 12, 34),
                                  padding: EdgeInsets.all(7.5)),
                              child: Text(
                                'DAY 3',
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize:
                                    MediaQuery.of(context).size.width *
                                        0.055,
                                    fontFamily: 'Xavier1'),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          height: 5.0,
                          color: Colors.blue[900],
                          thickness: 2.5,
                        ),
                        SizedBox(
                            height:
                            0.00125 * MediaQuery.of(context).size.height),
                        day == 1
                            ? _ListTileDisplay(
                            c.Day1Event, c.Day1About, c.Day1Timing)
                            : day == 2
                            ? _ListTileDisplay(
                            c.Day2Event, c.Day2About, c.Day2Timing)
                            : _ListTileDisplay(
                            c.Day3Event, c.Day3About, c.Day3Timing),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.05 * MediaQuery.of(context).size.height)
                ],
              ),
            ),
          ),
          BottomAppBar(
            color: Color.fromARGB(255, 3, 12, 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  color: Colors.white,
                  icon: Icon(Icons.home),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/events');
                  },
                  color: Colors.white,
                  icon: Icon(Icons.videogame_asset),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/schedule');
                  },
                  color: Colors.white,
                  icon: Icon(Icons.calendar_month),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, '/Teams');
                  },
                  color: Colors.white,
                  icon: Icon(Icons.people),
                ),
              ],
            ),
          ),
        ]
        ),
      ),
    );
  }
}