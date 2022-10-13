import 'dart:ui';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../App/location_page.dart';
//import 'package:flutter/gestures.dart';

class Eventss extends StatefulWidget {
  final String name;
  final String about;
  final String category;
  final String location;
  final String day;
  final String time;
  final String participants;
  final String phrase;
  final String rules;
  final String link;
  final String guidelines;
  final String mapLink;
  final String floor;

  const Eventss(
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
      required this.guidelines,
      required this.mapLink,
      required this.floor})
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
      guidelines: guidelines,
      mapLink: mapLink,
  floor: floor);
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
  String mapLink;
  String floor;
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
    required this.mapLink,
    required this.floor,
  });
  final PanelController _panelController1 = PanelController();
  final PageController _pageController2 = PageController();
  final ScrollController _scroll1 = ScrollController();
  final ScrollController _scroll2 = ScrollController();
  final String tag = "events";


  Widget _eventRules() {
    return Hero(
      tag: tag,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
              IconButton(
                onPressed: () {
                  _panelController1.close();
                },
                icon: const Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ),
              Text(
                "EVENT RULES",
                style: TextStyle(
                    fontFamily: "Xavier1",
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
                      child: Column(
                        children: [
                          Text(
                            rules,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: "Xavier3",
                                fontSize:
                                    0.04 * MediaQuery.of(context).size.width,
                                wordSpacing: 1.2,
                                color: Colors.white),
                          ),
                          SizedBox(
                              height: 0.1 * MediaQuery.of(context).size.height),
                          Text(
                            "SWIPE RIGHT TO KNOW MORE!",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Xavier2",
                                fontSize:
                                    0.04 * MediaQuery.of(context).size.width,
                                letterSpacing:
                                    0.0035 * MediaQuery.of(context).size.width),
                          )
                        ],
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
                    icon: const Icon(Icons.arrow_forward_ios_rounded,
                        color: Colors.white),
                    iconSize: 0.1 * MediaQuery.of(context).size.width,
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
      tag: tag,
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 0.01 * MediaQuery.of(context).size.height),
              IconButton(
                onPressed: () {
                  _panelController1.close();
                },
                icon: const Icon(Icons.keyboard_arrow_down_rounded,
                    color: Colors.white),
              ),
              Text(
                "GENERAL GUIDELINES",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Xavier1",
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
                        """Venue: St. Xavier's Collegiate School, Kolkata
    \nDate: 14th, 15th and 16th October, 2022
\n\n1. Each school must be represented by two students who must be
present throughout the fest.
\n2. WhatsApp groups for the school representatives will be formed
which will also comprise the administration. This group shall act as
a medium for the clearance of all doubts and questions regarding a
particular event or the whole fest in general.
\n3. School Uniform along with School ID cards is mandatory for all
participants and non-participants unless otherwise mentioned.
\n4. All events, unless otherwise mentioned, are open for participation
to the students of classes 9 to 12.
\n5. Decorum and norms of decency must be maintained at all times.
\n6. Points will be added to the total tally of schools for participating in
each event. Hence, maximum participation by each school is
encouraged.
\n7. Each event shall recognize the top 3 position holders and for
securing one of these ranks in any of the events, extra points will be
added to the school's total tally, as per the position secured.
\n8. Upholding the Xaverian principles of integrity and honesty, it is
imperative that we look at any competition with a mindset to learn.
In the spirit of contesting, we must not forget our ethics and
maintain a positive outlook towards our fellow competitors. We
expect all participants to refrain from using unfair means while
participating in their respective events.
\n9. Rights to admission are reserved.""",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontFamily: "Xavier3",
                            fontSize: 0.04 * MediaQuery.of(context).size.width,
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
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                iconSize: 0.1 * MediaQuery.of(context).size.width,
              ),
              SizedBox(width: 0.015 * MediaQuery.of(context).size.width),
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
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          name,
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              height: 0.04 * MediaQuery.of(context).size.height,
            ),
            Center(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    link,
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: 450.0,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 0.04 * MediaQuery.of(context).size.height),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 0.0825 * MediaQuery.of(context).size.width,
                        color: Colors.grey[200],
                        fontFamily: 'Xavier1'),
                  ),
                  SizedBox(
                    height: 0.03 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    about,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 0.045 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'Xavier1'),
                  ),
                  SizedBox(
                    height: 0.01 * MediaQuery.of(context).size.height,
                  ),
                  Divider(
                    height: 0.04 * MediaQuery.of(context).size.height,
                    color: Colors.grey[200],
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                    thickness: 0.0025 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'CATEGORY: $category',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 0.0375 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'Xavier1'),
                  ),
                  SizedBox(
                    height: 0.005 * MediaQuery.of(context).size.height,
                  ),
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                          builder: (context) => Location(
                          name: name,
                          des: about,
                          mapLink: mapLink,
                          loc: location,
                            floor: floor,
                                      )));},
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(3, 12, 34, 0.7),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                      0.0375 * MediaQuery.of(context).size.width,),
                      ),
                      fixedSize: Size(
                      0.9 * MediaQuery.of(context
                    ).size.width,
                        .055 * MediaQuery.of(context).size.height,
                      ),
                    ),
                    child: Text(
                      '$location',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 0.032 * MediaQuery.of(context).size.width,
                          // letterSpacing: 2.0,
                          color: Colors.grey[200],
                          fontFamily: 'Xavier1'),
                    ),
                  ),
                  SizedBox(
                    height: 0.005 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'DAY: $day',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 0.0375 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'Xavier1'),
                  ),
                  SizedBox(
                    height: 0.005 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'TIME: $time',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 0.0375 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'Xavier1'),
                  ),
                  SizedBox(
                    height: 0.005 * MediaQuery.of(context).size.height,
                  ),
                  Text(
                    'PARTICIPANTS: $participants',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 0.0375 * MediaQuery.of(context).size.width,
                        // letterSpacing: 2.0,
                        color: Colors.grey[200],
                        fontFamily: 'Xavier1'),
                  ),
                  Divider(
                    height: 0.04 * MediaQuery.of(context).size.height,
                    color: Colors.grey[200],
                    indent: MediaQuery.of(context).size.width * 0.05,
                    endIndent: MediaQuery.of(context).size.width * 0.05,
                    thickness: 0.0025 * MediaQuery.of(context).size.height,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.04 * MediaQuery.of(context).size.width,
                        vertical: 0.009 * MediaQuery.of(context).size.height),
                    child: Text(
                      textAlign: TextAlign.center,
                      phrase,
                      style: TextStyle(
                          fontSize: 0.03 * MediaQuery.of(context).size.width,
                          // letterSpacing: 2.0,
                          color: Colors.grey[200],
                          fontFamily: 'Xavier1'),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.025),
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
                                      fontFamily: "Xavier1",
                                      fontSize: 0.0375 *
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
        color: const Color.fromARGB(255, 3, 12, 34),
        child: Container(
            color: Colors.black.withOpacity(0.3),
            child: Column(children: [
              Flexible(
                  child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Card(
                        color: const Color.fromARGB(255, 3, 12, 34)
                            .withOpacity(0.2),
                        shape: const RoundedRectangleBorder(
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
              body: SlidingUpPanel(
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
            ));
  }
}
