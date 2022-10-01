import 'package:flutter/material.dart';
import 'package:xuberance22_app/App/teams.dart';
//import 'eventDetails.dart';
import 'constants.dart' as c;
import 'package:page_transition/page_transition.dart';

import 'eventSporting.dart';
import 'home.dart';

class Schedule extends StatefulWidget {
  final int day;
  const Schedule({Key? key, required this.day}) : super(key: key);

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
    if ((c.SportingDay1.contains(a)) ||
        (c.SportingDay2.contains(a)) ||
        (c.SportingDay3.contains(a))) {
      ret = c.Sporting[c.Sporting1.indexOf(a)];
    } else if ((c.OffStageDay1.contains(a)) ||
        (c.OffStageDay2.contains(a)) ||
        (c.OffStageDay3.contains(a))) {
      ret = c.OffStage[c.Offstage1.indexOf(a)];
    } else if ((c.OnStageDay1.contains(a)) ||
        (c.OnStageDay2.contains(a)) ||
        (c.OnStageDay3.contains(a))) {
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
    return SizedBox(
      height: .12 * MediaQuery.of(context).size.height,
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
                fontSize: MediaQuery.of(context).size.width * 0.025),
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
    );
  }

  Widget _ListTileDisplay(name, about, time) {
    double height;
    if (day == 1 || day == 2) {
      height = 1.25 * MediaQuery.of(context).size.height;
    } else {
      height = 0.55 * MediaQuery.of(context).size.height;
    }
    return SizedBox(
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
    String date = "";
    if (day == 1) {
      date = "14TH";
    }
    if (day == 2) {
      date = "15TH";
    }
    if (day == 3) {
      date = "16TH";
    }
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
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
        decoration: const BoxDecoration(
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
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                      const SizedBox(
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
                  const SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.0125,
                        vertical: 0.0),
                    color: const Color.fromARGB(255, 3, 12, 34),
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
                                  backgroundColor: const Color.fromARGB(255, 3, 12, 34),
                                  padding: const EdgeInsets.all(7.5)),
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
                                  backgroundColor: const Color.fromARGB(255, 3, 12, 34),
                                  padding: const EdgeInsets.all(7.5)),
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
                                  backgroundColor: const Color.fromARGB(255, 3, 12, 34),
                                  padding: const EdgeInsets.all(7.5)),
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
          SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
          BottomAppBar(
            color: const Color.fromARGB(255, 3, 12, 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const EventsSporting()));
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.videogame_asset),
                ),
                IconButton(
                  onPressed: (){},
                  color: Colors.white,
                  icon: const Icon(Icons.calendar_month),
                ),
                IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Team()));
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.people),
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