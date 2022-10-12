import 'package:flutter/material.dart';
import 'package:xuberance22/App/events_map_page.dart';
import 'package:xuberance22/App/schools.dart';
import 'package:xuberance22/App/sponsors.dart';
import 'eventSporting.dart';
import 'aboutus.dart';
import 'timer.dart';
import 'schedule.dart';
import 'teams.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        title: Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Xavier1',
            fontSize: 0.035 * MediaQuery.of(context).size.width,
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 0.055 * MediaQuery.of(context).size.height,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/FinalBG.png"), fit: BoxFit.cover),
        ),
        child: Column(children: <Widget>[

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 0.45 * MediaQuery.of(context).size.height,
                    padding: EdgeInsets.fromLTRB(
                        0.05 * MediaQuery.of(context).size.width,
                        0.05 * MediaQuery.of(context).size.height,
                        0.05 * MediaQuery.of(context).size.width,
                        0.0),
                    child: const Image(
                      image:
                      AssetImage("assets/logo3.png"),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        0.06 * MediaQuery.of(context).size.width,
                        0.0,
                        0.06 * MediaQuery.of(context).size.width,
                        0.0),
                    child: const Image(
                      image: AssetImage("assets/name1.png"),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        0.085 * MediaQuery.of(context).size.width,
                        0.0,
                        0.085 * MediaQuery.of(context).size.width,
                        0.0),
                    child: const Image(
                      image: AssetImage("assets/motto1.png"),
                    ),
                  ),
                  SizedBox(
                    height: 0.05 * MediaQuery.of(context).size.height,
                  ),
                  const Countdown(),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Divider(
                      thickness: 0.0035 * MediaQuery.of(context).size.height,
                      height: 0.075 * MediaQuery.of(context).size.height,
                      color: Colors.white),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sponsors()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(3, 12, 34, 0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0.05 * MediaQuery.of(context).size.width),
                          ),
                          fixedSize: Size(
                            0.3625 * MediaQuery.of(context).size.width,
                            .0825 * MediaQuery.of(context).size.height,
                          ),
                        ),
                        child: Text(
                          'SPONSORS',
                          style: TextStyle(
                            fontFamily: 'Xavier2',
                            fontSize:
                            0.03625 * MediaQuery.of(context).size.width,
                            letterSpacing:
                            0.00125 * MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AboutUs()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(3, 12, 34, 0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                0.05 * MediaQuery.of(context).size.width),
                          ),
                          fixedSize: Size(
                            0.3625 * MediaQuery.of(context).size.width,
                            .0825 * MediaQuery.of(context).size.height,
                          ),
                        ),
                        child: Text(
                          'ABOUT US',
                          style: TextStyle(
                            fontFamily: 'Xavier2',
                            fontSize:
                            0.03625 * MediaQuery.of(context).size.width,
                            letterSpacing:
                            0.00125 * MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Divider(
                      height: 0.075 * MediaQuery.of(context).size.width,
                      thickness: 0.0035 * MediaQuery.of(context).size.height,
                      color: Colors.white),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Column(
                    children: [
                      Text(
                        'LOCATION',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Xavier1',
                          fontSize: 0.06 * MediaQuery.of(context).size.width,
                        ),
                      ),
                      Divider(
                        height: 0.035 * MediaQuery.of(context).size.height,
                        color: Colors.white,
                        thickness: 0.0035 * MediaQuery.of(context).size.width,
                        indent: 0.135 * MediaQuery.of(context).size.width,
                        endIndent: 0.135 * MediaQuery.of(context).size.width,
                      ),
                      SizedBox(
                        height: 0.035 * MediaQuery.of(context).size.height,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Event_Location()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(3, 12, 34, 0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.05 * MediaQuery.of(context).size.width),
                              ),
                              fixedSize: Size(
                                0.3625 * MediaQuery.of(context).size.width,
                                .0825 * MediaQuery.of(context).size.height,
                              ),
                            ),
                            child: Text(
                              'EVENTS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Xavier2',
                                fontSize:
                                0.03625 * MediaQuery.of(context).size.width,
                                letterSpacing:
                                0.00075 * MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const School()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(3, 12, 34, 0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    0.05 * MediaQuery.of(context).size.width),
                              ),
                              fixedSize: Size(
                                0.3625 * MediaQuery.of(context).size.width,
                                .0825 * MediaQuery.of(context).size.height,
                              ),
                            ),
                            child: Text(
                              'SCHOOLS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Xavier2',
                                fontSize:
                                0.03625 * MediaQuery.of(context).size.width,
                                letterSpacing:
                                0.00075 * MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Divider(
                      height: 0.075 * MediaQuery.of(context).size.width,
                      thickness: 0.0035 * MediaQuery.of(context).size.height,
                      color: Colors.white),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'REACH OUT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Xavier1',
                          fontSize: 0.06 * MediaQuery.of(context).size.width,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 0.035 * MediaQuery.of(context).size.height,
                    color: Colors.white,
                    thickness: 0.0035 * MediaQuery.of(context).size.width,
                    indent: 0.135 * MediaQuery.of(context).size.width,
                    endIndent: 0.135 * MediaQuery.of(context).size.width,
                  ),
                  SizedBox(
                    height: 0.025 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 0.05 * MediaQuery.of(context).size.width),
                      Column(
                        children: [
                          Text(
                            '98365 63241',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier3',
                              fontSize:
                              0.04 * MediaQuery.of(context).size.width,
                            ),
                          ),
                          SizedBox(
                              height:
                              0.03 * MediaQuery.of(context).size.height),
                          Text(
                            '90076 83631',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier3',
                              fontSize:
                              0.04 * MediaQuery.of(context).size.width,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                          width: 0.125 * MediaQuery.of(context).size.width),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  launch(
                                      "https://www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D",
                                      universalLinksOnly: true);
                                },
                                color: Colors.white,
                                icon: const FaIcon(FontAwesomeIcons.instagram),
                              ),
                              TextButton(
                                onPressed: () {
                                  launch(
                                      "https://www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D",
                                      universalLinksOnly: true);
                                },
                                child: Text(
                                  '@xuberence22',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Xavier3',
                                    fontSize: 0.04 *
                                        MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.005 * MediaQuery.of(context).size.height,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  launch(
                                      "https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw",
                                      universalLinksOnly: true);
                                },
                                color: Colors.white,
                                icon: const FaIcon(FontAwesomeIcons.youtube),
                              ),
                              TextButton(
                                onPressed: () {
                                  launch(
                                      "https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw",
                                      universalLinksOnly: true);
                                },
                                child: Text(
                                  "X-Uberance '22",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Oufit_Regular',
                                    fontSize: 0.04 *
                                        MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 0.025 * MediaQuery.of(context).size.height),
                  Text(
                    '30, Mother Teresa Sarani,\n Kolkata - 700 016',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Oufit_Regular',
                      fontSize: 0.04 * MediaQuery.of(context).size.width,
                    ),
                  ),
                  SizedBox(height: 0.125 * MediaQuery.of(context).size.height),
                ],
              ),
              //primary: false,
            ),
          ),
          BottomAppBar(
            color: const Color.fromARGB(255, 3, 12, 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: const Icon(Icons.home),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EventsSporting()));
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.videogame_asset),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Schedule(
                              day: 1,
                            )));
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.calendar_month),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Team()));
                  },
                  color: Colors.white,
                  icon: const Icon(Icons.people),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
