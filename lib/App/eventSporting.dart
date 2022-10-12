import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../App/schedule.dart';
import '../App/teams.dart';
import '../login.dart';
import 'eventOffStage.dart';
import 'eventOnStage.dart';
import 'constants.dart' as c;
import 'home.dart';

class EventsSporting extends StatefulWidget {
  const EventsSporting({Key? key}) : super(key: key);

  @override
  State<EventsSporting> createState() => _EventsState();
}

class _EventsState extends State<EventsSporting> {
  Future<void> navigateToDescription(context, String a) async {
    Widget ret = c.Sporting[c.Sporting1.indexOf(a)];

    Navigator.push(
        context,
        PageTransition(
          child: ret,
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
        ));
  }

  Future<void> navigateToEventsOffStage() async {
    Navigator.push(
        context,
        PageTransition(
          child: const EventsOffStage(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
        ));
  }

  Future<void> navigateToEventsOnStage() async {
    Navigator.push(
        context,
        PageTransition(
          child: const EventsOnStage(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    List Sporting = [
      "X-GOAL",
      "X-HOOP",
      "X-PONG",
      "X-SPIKE",
      "X-PULL",
      "X-MATE",
      "X-WICKET",
      "X-O☐Δ",
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        title:
        Text(
          'Events',
          style: TextStyle(
            color: Colors.grey[200],
            fontSize: 0.035 * MediaQuery.of(context).size.width,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Xavier1',
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.account_circle),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                    child: const Login(),
                    type: PageTransitionType.fade,
                    duration: const Duration(milliseconds: 100),
                  ));
            },
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: (MediaQuery.of(context).size.width) * 0.09,
                bottom: (MediaQuery.of(context).size.height) * 0.01,
              ),
            ),
            const SizedBox(height: 90),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0.0),
                          child: Text(
                            "Sporting",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize:
                              0.035 * MediaQuery.of(context).size.width,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Xavier1',
                            ),
                          )
                      ),
                      ElevatedButton(
                          onPressed: () {
                            navigateToEventsOnStage();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(3, 12, 34, 0.8)),
                          child: Text(
                            "On-Stage",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize:
                              0.035 * MediaQuery.of(context).size.width,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Xavier1',
                            ),
                          )),
                      ElevatedButton(
                          onPressed: () {
                            navigateToEventsOffStage();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromRGBO(3, 12, 34, 0.8)),
                          child: Text(
                            "Off-Stage",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize:
                              0.035 * MediaQuery.of(context).size.width,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Xavier1',
                            ),
                          )),
                    ],
                  ),
                  SizedBox(height: 0.05 * height),
                  Flexible(
                    child: Scrollbar(
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: Sporting.map((event2) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: InkWell(
                              onTap: () {
                                navigateToDescription(context, event2);
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 0.4 * width,
                                    width: 0.4 * width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            "namedimages/$event2.png"),
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 0.1 * width, height: 20),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
              onPressed: (){},
              color: Colors.white,
              icon: const Icon(Icons.videogame_asset),
            ),
            IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Schedule(day: 1)));
              },
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
    );
  }
}