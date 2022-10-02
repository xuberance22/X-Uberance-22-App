import 'package:flutter/material.dart';
import '../App/eventSporting.dart';
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
        toolbarHeight: 0.055*MediaQuery.of(context).size.height,
      ),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/FinalBG.png'), fit: BoxFit.cover),
        ),
        child: Column(children: <Widget>[
          /*child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      backgroundColor: Colors.black,
                      title: Text('X-Uberence 2022'),
                    ),
                    SliverToBoxAdapter(
                      child:
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(200.0),
                              child: Image(
                                image: AssetImage('assets/LOGO FINAL.png'),
                              ),
                            ),
                            Container(
                              child: Countdown(),
                            ),
                            Divider(
                                height: 60.0,
                                color: Colors.transparent
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, '/Sponsors');
                                  },
                                  child: Text('Sponsors'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(context, '/About_us');
                                  },
                                  child: Text('About us'),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.black.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                                height: 60.0,
                                color: Colors.transparent
                            ),
                          ],
                        ),
                        primary: false,
                      ),
                    ),
                  ],
                ),*/
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
                      image: AssetImage('assets/logo3.png'),
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
                      image: AssetImage('assets/name1.png'),
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
                      image: AssetImage('assets/motto1.png'),
                    ),
                  ),
                  SizedBox(
                    height: 0.05 * MediaQuery.of(context).size.height,
                  ),
                  const Countdown(),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Divider(
                      thickness: 0.002 * MediaQuery.of(context).size.height,
                      height: 0.075 * MediaQuery.of(context).size.height,
                      color: Colors.white),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // ElevatedButton(
                      //   onPressed: () {
                      //     Navigator.pushReplacementNamed(context, '/Sponsors');
                      //   },
                      //   child: Text('Sponsors'),
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.black.withOpacity(0.5),
                      //     shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(0.005*MediaQuery.of(context).size.width),
                      //     ),
                      //   ),
                      // ),
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
                            0.625 * MediaQuery.of(context).size.width,
                            .1125 * MediaQuery.of(context).size.height,
                          ),
                        ),
                        child: Text(
                          'ABOUT US',
                          style: TextStyle(
                            fontFamily: 'Xavier2',
                            fontSize:
                                0.0725 * MediaQuery.of(context).size.width,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                  Divider(
                      height: 0.075 * MediaQuery.of(context).size.width,
                      thickness: 0.002 * MediaQuery.of(context).size.height,
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
                                  launchUrl(Uri.parse(
                                      "https://www.instagram.com/xuberance22/"));
                                },
                                color: Colors.white,
                                icon: const FaIcon(FontAwesomeIcons.instagram),
                              ),
                              TextButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      "https://www.instagram.com/xuberance22/"));
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
                                  launchUrl(Uri.parse(
                                      "https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));
                                },
                                color: Colors.white,
                                icon: const FaIcon(FontAwesomeIcons.youtube),
                              ),
                              TextButton(
                                onPressed: () {
                                  launchUrl(Uri.parse(
                                      "https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));
                                },
                                child: Text(
                                  "X-Uberance '22",
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
                      fontFamily: 'Xavier3',
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
                            builder: (context) => const Schedule(
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