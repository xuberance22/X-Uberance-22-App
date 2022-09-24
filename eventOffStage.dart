import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'eventOnStage.dart';
import 'eventSporting.dart';
import 'constants.dart'as c;

class EventsOffStage extends StatefulWidget {
  const EventsOffStage({Key? key}) : super(key: key);

  @override
  State<EventsOffStage> createState() => _EventsOffStageState();
}

class _EventsOffStageState extends State<EventsOffStage> {
  Future<void> navigateToDescription(context, String a) async {
    Widget ret = c.OffStage[c.Offstage1.indexOf(a)];

    Navigator.push(
        context,
        PageTransition(
          child: ret,
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }
  Future<void> navigateToEventsOnStage() async {
    Navigator.push(
        context,
        PageTransition(
          child: const EventsOnStage(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }
  Future<void> navigateToEventsSporting() async {
    Navigator.push(
        context,
        PageTransition(
          child: const EventsSporting(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));

  }

  @override
  Widget build(BuildContext context) {
    List OffStage = ["X-QUIZITE" , "X-GAANA","X-SPLASH","X-TRIAL", "X-30","X-CALIBRE","X-BID" , "X-HUNT","X-CODE","X-PIXEL","X-MONTAGE","X-BET",];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Events',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 0.035 * MediaQuery.of(context).size.width,
                // fontWeight: FontWeight.bold,
                fontFamily: 'Xavier1',
              ),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
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
                            navigateToEventsOnStage();
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
                          style: ElevatedButton.styleFrom(primary: Color.fromRGBO(3, 12, 34, 0.8))
                      ),
                      ElevatedButton(
                          onPressed: () {
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
                          style: ElevatedButton.styleFrom(primary: Colors.transparent,elevation: 0.0)
                      ),
                    ],
                  ),
                  SizedBox(height: 0.05*height),
                  Flexible(
                    child: Scrollbar(
                      child: GridView.count(crossAxisCount: 2, children:
                      OffStage.map((event2) {
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
                    icon: Icon(Icons.games),
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
          ],
        ),
      ),
    );
  }
}
