// ignore_for_file: camel_case_types, no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:url_launcher/url_launcher.dart';

// import '../pages/team2.dart';
// import '../pages/events.dart';
// import '../pages/home.dart';
// import '../pages/schedule.dart';
class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'SPONSORS',
          style: TextStyle(
            color: Colors.grey[200],
            fontSize: 0.045 * MediaQuery.of(context).size.width,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Xavier1',
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.05 * width, vertical: 0),
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SPONSORS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.053 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
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

                  SizedBox(height: height * .02),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "HYDRATION PARTNER",
                          link: "sponsors/PABITRA.jpg"),
                      Sponsor_Image(
                          title: "HEALTH PARTNER", link: "sponsors/RB.jpg"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "EDUCATION PARTNER",
                          link: "sponsors/StraightA.jpeg"),
                      Sponsor_Image(
                          title: "SPORTING PARTNER",
                          link: "sponsors/DECATHLON.jpg")
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "CLOTHING PARTNER",
                          link: "sponsors/VARDHMAN.jpg"),
                      Sponsor_Image(
                          title: "RADIO PARTNER", link: "sponsors/91.9MM.jpg"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "FOOD PARTNER",
                          link: "sponsors/STUN_THE_.jpg"),
                      Sponsor_Image(
                          title: "OUTDOOR PARTNER",
                          link: "sponsors/KARUKRIT.jpg"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "DIGITAL MEDIA PARTNER",
                          link: "sponsors/ZEE_BANGLA.jpg"),
                      Sponsor_Image(
                          title: "TROPHY PARTNER", link: "sponsors/PRESTA.jpg"),
                    ],
                  ),

                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "PRINT MEDIA PARTNER",
                          link: "sponsors/T2.jpg"),
                      Sponsor_Image(
                          title: "STATIONARY PARTNER",
                          link: "sponsors/PENTONIC.jpg"),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class Sponsor_Image extends StatefulWidget {
  String title;
  String link;
  Sponsor_Image({Key? key, required this.title, required this.link})
      : super(key: key);

  @override
  State<Sponsor_Image> createState() =>
      _Sponsor_ImageState(title: title, link: link);
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
            height: 0.125 * MediaQuery.of(context).size.width,
            width: 0.125 * MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(link),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0, width: 0.1),
        Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Xavier1",
                fontSize: 0.03 * MediaQuery.of(context).size.width)),
      ],
    );
  }
}
