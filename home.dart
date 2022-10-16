
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:xuberance2022_website/pages/events_map_page.dart';
import '../services/timer.dart';
import '../pages/team2.dart';
import '../pages/about_us.dart';
import '../pages/sponsors.dart';
import '../pages/schedule.dart';
import '../pages/events.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/school.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> navigateToSponsors(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Sponsors(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Team(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: Events(events_type: 1),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToSchedule(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: Schedule(day: 1),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToAbout(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const AboutUs(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToSchool(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const School(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  Future<void> navigateToEvents_Location(context) async {
    Navigator.push(
        context,
        PageTransition(
          child: const Event_Location(),
          type: PageTransitionType.fade,
          duration: const Duration(milliseconds: 500),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(

      extendBodyBehindAppBar: true,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 0.05 * width, height: 0.1),
            TextButton(
              onPressed: () {},
              child: const Text("Home",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      decorationThickness: 4.0,
                      shadows: [Shadow(
                        color: Colors.white,
                        offset: Offset(0, -5),
                      )],
                      color: Colors.transparent,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToSchedule(context);
              },
              child: const Text("Schedule",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToEvents(context);
              },
              child: const Text("Events",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            TextButton(
              onPressed: () {
                navigateToTeams(context);
              },
              child: const Text("Teams",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Xavier1',
                      fontSize: 20)),
            ),
            SizedBox(width: 0.05 * width, height: 0.1),
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 40),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(width: width, height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.43 * width / 1.5,
                        width: 0.33 * width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Newlogo.png"),
                            //images/Logot.png
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.7/ 10 * height,
                        width: 1.1 / 3 * width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Xuberance.png"),
                            //images/Logobn.png
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Container(
                        height: 0.4/ 10 * height,
                        width: 1 / 3 * width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Exemplifying.png"),
                            //images/Logobn.png
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * (.07)),
                  const Countdown(),
                  SizedBox(height: height * (.05)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            navigateToSponsors(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black.withOpacity(0.5),
                            textStyle: TextStyle(
                              fontFamily: 'Xavier2',
                              fontSize: 0.0231 * width,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            fixedSize: Size(2 / 10 * width, .1 * height),
                          ),
                          child: const Text("SPONSORS")),
                      SizedBox(width: .075 * width),
                      ElevatedButton(
                        onPressed: () {
                          navigateToAbout(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          textStyle: TextStyle(
                            fontFamily: 'Xavier2',
                            fontSize: 0.0231*width,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fixedSize: Size(2 / 10 * width, .1 * height),
                        ),
                        child: const Text(
                          "ABOUT US",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2 / 7.5 * height),
                      ElevatedButton(
                        onPressed: () {
                          navigateToSchool(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          textStyle: TextStyle(
                            fontFamily: 'Xavier2',
                            fontSize: 0.0231 * width,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fixedSize: Size(2 / 10 * width, .1 * height),
                        ),
                        child: const Text(
                          "SCHOOLS",
                        ),
                      ),
                      SizedBox(width: .075 * width),
                      ElevatedButton(
                        onPressed: () {
                          navigateToEvents_Location(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black.withOpacity(0.5),
                          textStyle: TextStyle(
                            fontFamily: 'Xavier2',
                            fontSize: 0.0231*width,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          fixedSize: Size(2 / 10 * width, .1 * height),
                        ),
                        child: const Text(
                          "EVENTS",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1 / 7.5 * height),
                  Container(
                    color: const Color(0xff2F303A),
                    height: ((1.6 / 5) * height),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5, width: 10),
                              InkWell(
                                onTap: () {
                                  launchUrl(Uri.parse("https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US"));                                },
                                child: Container(
                                  height: (3.5 / 5) * ((1.6 / 5) * height),
                                  width: (1 / 5.5) * width,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("images/XAVIERS_MAP.png"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: (){launchUrl(Uri.parse("https://www.google.com/maps/place/St.+Xavier's+College+(Autonomous)+-+Kolkata/@22.5489161,88.356172,393m/data=!3m2!1e3!4b1!4m5!3m4!1s0x0:0x62c7778aead16f97!8m2!3d22.5489161!4d88.356172?hl=en-US"));},
                                child: Text(
                                  "30 Mother Teresa Sarani, Kolkata-700016",
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width),
                                ),
                              ),
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              SizedBox(height: 0, width: 10),
                              Text(
                                "  Contact Us",
                                style: TextStyle(
                                  color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.018 * width,),
                              ),
                              TextButton(
                                onPressed: (){
                                  launchUrl(Uri.parse("mailto:info@xuberance22.com"));
                                },
                                child:Text(
                                  "Email : info@xuberance22.com",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                                ), ),
                              Text(
                                "   Phone 1 :  98365 63241",
                                style: TextStyle(
                                  color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                              ),
                              Text(
                                "   Phone 2 :  9007683631",
                                style: TextStyle(
                                  color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                              ),
                            ]),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            SizedBox(height: 0, width: 10),
                            Text(
                              "    Social Handles",
                              style: TextStyle(
                                color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.018 * width,),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: (){launchUrl(Uri.parse("https: www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D"));},
                                  icon: FaIcon(FontAwesomeIcons.instagram,
                                    color: Colors.white,),
                                ),
                                SizedBox(width: 0.2),
                                Text(
                                  "  Instagram",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                                ),


                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: (){launchUrl(Uri.parse("https: www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));},
                                  icon: FaIcon(FontAwesomeIcons.youtube,
                                    color: Colors.white,),
                                ),
                                SizedBox(width: 0.2),
                                Text(
                                  "  YouTube",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 0.015 * width,),
                                ),


                              ],
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
