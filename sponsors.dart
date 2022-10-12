// ignore_for_file: camel_case_types, no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/team2.dart';
import '../pages/events.dart';
import '../pages/home.dart';
import '../pages/schedule.dart';
class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  Future<void> navigateToTeams(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Team(),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToEvents(context) async {
    Navigator.push(
        context, PageTransition(
      child: Events(events_type: 1,),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToSchedule(context) async {
    Navigator.push(
        context, PageTransition(
      child: Schedule(day:1),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  Future<void> navigateToHome(context) async {
    Navigator.push(
        context, PageTransition(
      child: const Home(),
      type: PageTransitionType.fade,
      duration: const Duration(milliseconds:500 ),
    ));
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: width*0.01, height:0.1),
            BackButton(
              color: Colors.white,
              onPressed: (){navigateToHome(context);},
            ),
          ],
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body:Container(
        height: height,
        width:width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text("SPONSORS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053*width,
                              fontFamily: 'Xavier2',
                            ),),
                        ],
                      ),
                      const Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 80,
                        thickness: 2,
                      ),

                      //Companies going
                      // Health: RB
                      // Hydration: Pabitra Jal
                      // Education: Straight A
                      // Sporting: Decathlon
                      // Clothing: Vardhaman
                      // Outdoor: Karukrit
                      // Radio: 91.9 Friends FM
                      // Media: Zee Bangla
                      // Food: Stun the Sun
                      // Trophies: Presto

                      SizedBox(height: height*.02),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text(
                          "TITLE SPONSOR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.025 * width,
                            fontFamily: 'Xavier2',
                          ),
                        ),
                      ]),
                      Divider(
                        color: Colors.white,
                        indent: 0.35 * width,
                        endIndent: 0.35 * width,
                        height: 0.037 * height,
                        thickness: 2,
                      ),
                      SizedBox(height: height * .1),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "", link: "sponsors/MEPL.jpg"),
                        ],
                      ),
                      SizedBox(height: height * .15),
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text(
                          "CO SPONSOR",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.025 * width,
                            fontFamily: 'Xavier2',
                          ),
                        ),
                      ]),
                      Divider(
                        color: Colors.white,
                        indent: 0.35 * width,
                        endIndent: 0.35 * width,
                        height: 0.037 * height,
                        thickness: 2,
                      ),
                      SizedBox(height: height * .1),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "", link: "sponsors/SUCHITA.jpg"),
                        ],
                      ),
                      SizedBox(height: height * .15),

                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                        Text(
                          "PARTNERS",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.025 * width,
                            fontFamily: 'Xavier2',
                          ),
                        ),
                      ]),
                      Divider(
                        color: Colors.white,
                        indent: 0.35 * width,
                        endIndent: 0.35 * width,
                        height: 0.037 * height,
                        thickness: 2,
                      ),
                      SizedBox(height: height * .1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "HYDRATION PARTNER", link: "sponsors/PABITRA.jpg"),
                          Sponsor_Image(title: "HEALTH PARTNER", link: "sponsors/RB.jpg"),
                          ],
                      ),
                      SizedBox(height: height*.10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "EDUCATION PARTNER", link: "sponsors/StraightA.jpeg"),
                          Sponsor_Image(title: "SPORTING PARTNER", link: "sponsors/DECATHLON.jpg")
                        ],
                      ),
                      SizedBox(height: height*.10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "CLOTHING PARTNER", link: "sponsors/VARDHMAN.jpg"),
                          Sponsor_Image(title: "RADIO PARTNER", link: "sponsors/91.9MM.jpg"),
                        ],
                      ),
                      SizedBox(height: height*.10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "FOOD PARTNER", link: "sponsors/STUN_THE_.jpg"),
                          Sponsor_Image(title: "OUTDOOR PARTNER", link: "sponsors/KARUKRIT.jpg"),
                        ],
                      ),
                      SizedBox(height: height*.10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "DIGITAL MEDIA PARTNER", link: "sponsors/ZEE_BANGLA.jpg"),
                          Sponsor_Image(title: "TROPHY PARTNER", link: "sponsors/PRESTA.jpg"),
                        ],
                      ),

                      SizedBox(height: height*.10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Sponsor_Image(title: "PRINT MEDIA PARTNER", link: "sponsors/T2.jpg"),
                          Sponsor_Image(title: "STATIONARY PARTNER", link: "sponsors/PENTONIC.jpg"),
                        ],
                      ),
                      SizedBox(height: 40,),
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
                                          color: Colors.white, fontFamily: 'Xavier3'),
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
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 20,),
                                  ),
                                  TextButton(
                                    onPressed: (){
                                      launchUrl(Uri.parse("mailto:info@xuberance22.com"));
                                    },
                                    child:Text(
                                      " Email : info@xuberance22.com",
                                      style: TextStyle(
                                        color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                    ), ),
                                  Text(
                                    "   Phone 1 :  98365 63241",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                  ),
                                  Text(
                                    "   Phone 2 :  9007683631",
                                    style: TextStyle(
                                      color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                  ),
                                ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                SizedBox(height: 0, width: 10),
                                Text(
                                  "  Social Handles",
                                  style: TextStyle(
                                    color: Colors.white, fontFamily: 'Xavier3',fontSize: 20,),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: (){launchUrl(Uri.parse("https://www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D"));},
                                      icon: FaIcon(FontAwesomeIcons.instagram,
                                        color: Colors.white,),
                                    ),
                                    SizedBox(width: 0.2),
                                    Text(
                                      "  Instagram",
                                      style: TextStyle(
                                        color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                    ),


                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: (){launchUrl(Uri.parse("https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));},
                                      icon: FaIcon(FontAwesomeIcons.youtube,
                                        color: Colors.white,),
                                    ),
                                    SizedBox(width: 0.2),
                                    Text(
                                      "  YouTube",
                                      style: TextStyle(
                                        color: Colors.white, fontFamily: 'Xavier3',fontSize: 18,),
                                    ),


                                  ],
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}


class Sponsor_Image extends StatefulWidget {
  String title;
  String link;
  Sponsor_Image({Key? key,  required this.title, required this.link}) : super(key: key);

  @override
  State<Sponsor_Image> createState() => _Sponsor_ImageState(title:title, link:link);
}

class _Sponsor_ImageState extends State<Sponsor_Image> {

  String title;
  String link;
  _Sponsor_ImageState({required this.title, required this.link});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            height: 0.125*MediaQuery.of(context).size.width,
            width: 0.125*MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(link),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height:5.0, width:0.1),
        Text(title, style:const TextStyle(color:Colors.white, fontFamily: "Xavier1", )),
      ],
    );
  }
}
