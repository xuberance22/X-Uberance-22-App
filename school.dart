

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:xuberance2022_website/pages/events.dart';
import 'package:xuberance2022_website/pages/home.dart';
import 'package:page_transition/page_transition.dart';
import 'package:xuberance2022_website/pages/location_map_school.dart';

class Sch{
  final String name;
  final String class_sec;
  final String map;
  final String floor;
  final String name_location;

  Sch ({
    required this.name,required this.class_sec,required this.map,required this.floor, required this.name_location,
  });
}

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {
  List Schools = [
    Sch(
        name: "St. Xavier's Collegiate School",
        class_sec: "12-A",
        map: "images/HITANSH_AGARWAL",
        floor: "Ground Floor", name_location: "St. Xavier's Collegiate School"),
    Sch(
        name: "Modern High School International",
        class_sec: "6-D",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: "Modern High School \n      International"),
    Sch(
        name: "La Martiniere for Boys",
        class_sec: "10-A",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'La Martiniere for Boys'),
    Sch(
        name: "Modern High School",
        class_sec: "6-C",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'Modern High School'),
    Sch(
        name: "Don Bosco, Park Circus",
        class_sec: "10-B",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'Don Bosco, Park Circus'),
    Sch(
        name: "South City International School (Girls)",
        class_sec: "6-B",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'South City International\n             School (Girls)'),
    Sch(
        name: "South City International School (Boys)",
        class_sec: "10-C",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'South City International\n            School (Boys)'),
    Sch(
        name: "Loreto Day School, Elliot Road",
        class_sec: "6-A",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'Loreto Day School, Elliot Road'),
    Sch(
        name: "MP Birla Foundation Higher Secondary School (Girls)",
        class_sec: "8-E",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'MP Birla Foundation Higher\n  Secondary School (Girls)'),
    Sch(
        name: "MP Birla Foundation Higher Secondary School (Boys)",
        class_sec: "10-D",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'MP Birla Foundation Higher\n  Secondary School (Boys)'),
    Sch(
        name: "Calcutta Girls High School",
        class_sec: "7-D",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'Calcutta Girls High School'),
    Sch(
        name: "Garden High School (Girls)",
        class_sec: "7-C",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'Garden High School (Girls)'),
    Sch(
        name: "Garden High School (Boys)",
        class_sec: "10-E",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'Garden High School (Boys)'),
    Sch(
        name: "St. Lawrence High School",
        class_sec: "9-D",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'St. Lawrence High School'),
    Sch(
        name: "Birla High School (Girls)",
        class_sec: "7-B",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'Birla High School (Girls)'),
    Sch(
        name: "Birla High School (Boys)",
        class_sec: "9-B",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'Birla High School (Boys)'),
    Sch(
        name: "The Newtown School (Girls)",
        class_sec: "7-A",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'The Newtown School (Girls)'),
    Sch(
        name: "The Newtown School (Boys)",
        class_sec: "9-C",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'The Newtown School (Boys)'),
    Sch(
        name: "Loreto House",
        class_sec: "8-A",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'Loreto House'),
    Sch(
        name: "The Heritage School (Girls)",
        class_sec: "7-E",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'The Heritage School (Girls)'),
    Sch(
        name: "The Heritage School (Boys)",
        class_sec: "9-A",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'The Heritage School (Boys)'),
    Sch(
        name: "Sri Sri Academy (Girls)",
        class_sec: "8-D",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'Sri Sri Academy (Girls)'),
    Sch(
        name: "Sri Sri Academy (Boys)",
        class_sec: "9-E",
        map: "images/HITANSH_AGARWAL",
        floor: "1", name_location: 'Sri Sri Academy (Boys)'),
    Sch(
        name: "St. James School",
        class_sec: "8-B",
        map: "images/HITANSH_AGARWAL",
        floor: "", name_location: 'St. James School'),
  ];

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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scrollbar(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Schools',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: "Xavier2",
                      color: Colors.white,
                      fontSize: 0.053*width),),
              ),
              for(Sch e in Schools)
                Column(
                  children: [
                    SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10.0),
                        title: Text(
                          e.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                              0.02 * MediaQuery.of(context).size.height),
                        ),
                        trailing: Text(
                          e.class_sec,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                              0.02 * MediaQuery.of(context).size.height),
                        ),
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Location_School(name: e.name_location, des: e.class_sec, mapLink: e.map, floor: e.floor,)));
                        },
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
                              onPressed: (){launchUrl(Uri.parse("https://www.instagram.com/xuberance22/?igshid=YmMyMTA2M2Y%3D"));},
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
                              onPressed: (){launchUrl(Uri.parse("https://www.youtube.com/channel/UCJoQvLpNvAd0jhklhv0-1Jw"));},
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
            ],
          ),
        ),
      ),
    );
  }
}

