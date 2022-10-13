import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:xuberance2022_website/pages/events.dart';
// import 'package:xuberance2022_website/pages/home.dart';
import 'package:page_transition/page_transition.dart';
import '../App/location_map_school.dart';
// import 'package:xuberance2022_website/pages/location_map_school.dart';

class Sch {
  final String name;
  final String class_sec;
  final String map;
  final String floor;
  final String name_location;

  Sch({
    required this.name,
    required this.class_sec,
    required this.map,
    required this.floor,
    required this.name_location,
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
        map: "class_images/12A.png",
        floor: "Ground Floor",
        name_location: "St. Xavier's Collegiate School"),
    Sch(
        name: "Modern High School International",
        class_sec: "6-D",
        map: "class_images/6d.png",
        floor: "Second Floor",
        name_location: "Modern High School \n      International"),
    Sch(
        name: "La Martiniere for Boys",
        class_sec: "10-A",
        map: "class_images/10A.png",
        floor: "First Floor",
        name_location: 'La Martiniere for Boys'),
    Sch(
        name: "Modern High School",
        class_sec: "6-C",
        map: "class_images/6c.png",
        floor: "Second Floor",
        name_location: 'Modern High School'),
    Sch(
        name: "Don Bosco, Park Circus",
        class_sec: "10-B",
        map: "class_images/10B.png",
        floor: "First Floor",
        name_location: 'Don Bosco, Park Circus'),
    Sch(
        name: "South City International School (Girls)",
        class_sec: "6-B",
        map: "class_images/6b.png",
        floor: "Second Floor",
        name_location: 'South City\n International \n     School (Girls)'),
    Sch(
        name: "South City International School (Boys)",
        class_sec: "10-C",
        map: "class_images/10C.png",
        floor: "First Floor",
        name_location: 'South City\n International \n     School (Boys)'),
    Sch(
        name: "Loreto Day School, Elliot Road",
        class_sec: "6-A",
        map: "class_images/6a.png",
        floor: "Second Floor",
        name_location: 'Loreto Day School, Elliot Road'),
    Sch(
        name: "MP Birla Foundation Higher Secondary School (Girls)",
        class_sec: "8-E",
        map: "class_images/8e.png",
        floor: "First Floor",
        name_location:
        'MP Birla Foundation Higher\n  Secondary School (Girls)'),
    Sch(
        name: "MP Birla Foundation Higher Secondary School (Boys)",
        class_sec: "10-D",
        map: "class_images/10D.png",
        floor: "First Floor",
        name_location: 'MP Birla Foundation Higher\n  Secondary School (Boys)'),
    Sch(
        name: "Calcutta Girls High School",
        class_sec: "7-D",
        map: "class_images/7d.png",
        floor: "Second Floor",
        name_location: 'Calcutta Girls High School'),
    Sch(
        name: "Garden High School (Girls)",
        class_sec: "7-C",
        map: "class_images/7c.png",
        floor: "Second Floor",
        name_location: 'Garden High School (Girls)'),
    Sch(
        name: "Garden High School (Boys)",
        class_sec: "10-E",
        map: "class_images/10E.png",
        floor: "First Floor",
        name_location: 'Garden High School (Boys)'),
    Sch(
        name: "St. Lawrence High School",
        class_sec: "9-D",
        map: "class_images/9d.png",
        floor: "First Floor",
        name_location: 'St. Lawrence High School'),
    Sch(
        name: "Birla High School",
        class_sec: "9-B",
        map: "class_images/9b.png",
        floor: "First Floor",
        name_location: 'Birla High School (Boys)'),
    Sch(
        name: "The Newtown School (Girls)",
        class_sec: "7-A",
        map: "class_images/7a.png",
        floor: "Second Floor",
        name_location: 'The Newtown School (Girls)'),
    Sch(
        name: "The Newtown School (Boys)",
        class_sec: "9-C",
        map: "class_images/9c.png",
        floor: "First Floor",
        name_location: 'The Newtown School (Boys)'),
    Sch(
        name: "Loreto House",
        class_sec: "8-A",
        map: "class_images/8a.png",
        floor: "Second Floor",
        name_location: 'Loreto House'),
    Sch(
        name: "The Heritage School (Girls)",
        class_sec: "7-E",
        map: "class_images/7e.png",
        floor: "Second Floor",
        name_location: 'The Heritage School (Girls)'),
    Sch(
        name: "The Heritage School (Boys)",
        class_sec: "9-A",
        map: "class_images/9a.png",
        floor: "First Floor",
        name_location: 'The Heritage School (Boys)'),
    Sch(
        name: "Sri Sri Academy (Girls)",
        class_sec: "8-D",
        map: "class_images/8d.png",
        floor: "First Floor",
        name_location: 'Sri Sri Academy (Girls)'),
    Sch(
        name: "Sri Sri Academy (Boys)",
        class_sec: "9-E",
        map: "class_images/9e.png",
        floor: "First Floor",
        name_location: 'Sri Sri Academy (Boys)'),
    Sch(
        name: "St. James School",
        class_sec: "8-B",
        map: "class_images/8b.png",
        floor: "First Floor",
        name_location: 'St. James School'),
  ];

  // Future<void> navigateToHome(context) async {
  //   Navigator.push(
  //       context, PageTransition(
  //     child: const Home(),
  //     type: PageTransitionType.fade,
  //     duration: const Duration(milliseconds:500 ),
  //   ));
  // }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        automaticallyImplyLeading: true,
        title: Text(
          'SCHOOL LOCATIONS',
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
        child: Scrollbar(
          child: ListView(
            children: [
              for (Sch e in Schools)
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
                                  0.0175 * MediaQuery.of(context).size.height),
                        ),
                        trailing: Text(
                          e.class_sec,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                              fontSize:
                                  0.02 * MediaQuery.of(context).size.height),
                        ),
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Location_School(name: e.name_location, des: e.class_sec, mapLink: e.map, floor: e.floor,)));
                        },
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
