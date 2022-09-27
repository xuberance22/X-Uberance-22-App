import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:xuberance22/App/schedule.dart';
import 'package:xuberance22/App/teams.dart';
import '../login.dart';
import 'eventOffStage.dart';
import 'eventSporting.dart';
import 'constants.dart' as c;
import 'home.dart';
class EventsOnStage extends StatefulWidget {
  const EventsOnStage({Key? key}) : super(key: key);

  @override
  State<EventsOnStage> createState() => _EventsState();
}

class _EventsState extends State<EventsOnStage> {
  Future<void> navigateToDescription(context, String a) async {
    Widget ret = c.OnStage[c.Onstage1.indexOf(a)];

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
  Future<void> navigateToEventsSporting() async {
    Navigator.push(
        context,
        PageTransition(
          child: const EventsSporting(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 0),
        ));
  }
  @override
  Widget build(BuildContext context) {
    List OnStage = [ "X-60","X-ABHINOY","X-ACT","X-DROP", "X-RHYME","X-RAGA", "X-HOP","X-TRAVAGANCE","X-ACOUSTIC","X-PUN","X-VOGUE" ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        title: Text(
              'Events',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 0.035 * MediaQuery.of(context).size.width,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Xavier1',
              ),
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
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
                            navigateToEventsSporting();
                          },
                          child: Text(
                            "Sporting",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize:
                              0.035 * MediaQuery.of(context).size.width,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(3, 12, 34, 0.8))
                      ),
                      ElevatedButton(
                          onPressed: () {
                          },
                          child: Text(
                            "On-Stage",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize:
                              0.035 * MediaQuery.of(context).size.width,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0.0)
                      ),
                      ElevatedButton(
                          onPressed: () {
                            navigateToEventsOffStage();
                          },
                          child: Text(
                            "Off-Stage",
                            style: TextStyle(
                              color: Colors.grey[200],
                              fontSize:
                              0.035 * MediaQuery.of(context).size.width,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(3, 12, 34, 0.8))
                      ),
                    ],
                  ),
                  SizedBox(height: 0.05*height),
                  Flexible(
                    child: Scrollbar(
                      child: GridView.count(crossAxisCount: 2, children:
                      OnStage.map((event2) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: InkWell(
                            onTap: () {
                              navigateToDescription(context,event2);
                            },
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 0.3 * width,
                                  width: 0.3 * width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "${"namedimages/" + event2}.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    width: 0.1 * width, height: 20),
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
            BottomAppBar(
              color: Color.fromARGB(255, 3, 12, 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    color: Colors.white,
                    icon: Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: (){},
                    color: Colors.white,
                    icon: Icon(Icons.videogame_asset),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Schedule(day: 1)));
                    },
                    color: Colors.white,
                    icon: Icon(Icons.calendar_month),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Team()));
                    },
                    color: Colors.white,
                    icon: Icon(Icons.people),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}