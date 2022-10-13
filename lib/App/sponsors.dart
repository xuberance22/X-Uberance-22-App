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
                  SizedBox(height: height * .02),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "TITLE SPONSOR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.041 * width,
                        fontFamily: 'Xavier2',
                      ),
                    ),
                  ]),
                  Divider(
                    color: Colors.white,
                    indent: 0.25 * width,
                    endIndent: 0.25 * width,
                    height: 0.037 * height,
                    thickness: 2,
                  ),
                  SizedBox(height: height * .1),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Sponsor_Image(title: "", link: "sponsors/5.png"),
                    ],
                  ),
                  SizedBox(height: height * .1),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "CO SPONSOR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.041 * width,
                        fontFamily: 'Xavier2',
                      ),
                    ),
                  ]),
                  Divider(
                    color: Colors.white,
                    indent: 0.25 * width,
                    endIndent: 0.25 * width,
                    height: 0.037 * height,
                    thickness: 2,
                  ),
                  SizedBox(height: height * .1),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Sponsor_Image(title: "", link: "sponsors/4.png"),
                    ],
                  ),
                  SizedBox(height: height * .1),

                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "PARTNERS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 0.041 * width,
                        fontFamily: 'Xavier2',
                      ),
                    ),
                  ]),
                  Divider(
                    color: Colors.white,
                    indent: 0.25 * width,
                    endIndent: 0.25 * width,
                    height: 0.037 * height,
                    thickness: 2,
                  ),
                  SizedBox(height: height * .1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "HYDRATION PARTNER",
                          link: "sponsors/6.png"),
                      Sponsor_Image(
                          title: "HEALTH PARTNER", link: "sponsors/7.png"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "EDUCATION PARTNER",
                          link: "sponsors/8.png"),
                      Sponsor_Image(
                          title: "SPORTING PARTNER",
                          link: "sponsors/10.png")
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "CLOTHING PARTNER",
                          link: "sponsors/12.png"),
                      Sponsor_Image(
                          title: "RADIO PARTNER", link: "sponsors/13.png"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "FOOD PARTNER",
                          link: "sponsors/14.png"),
                      Sponsor_Image(
                          title: "OUTDOOR PARTNER",
                          link: "sponsors/15.png"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "DIGITAL MEDIA PARTNER",
                          link: "sponsors/17.png"),
                      Sponsor_Image(
                          title: "TROPHY PARTNER", link: "sponsors/18.png"),
                    ],
                  ),

                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "PRINT MEDIA PARTNER",
                          link: "sponsors/19.png"),
                      Sponsor_Image(
                          title: "STATIONARY PARTNER",
                          link: "sponsors/20.png"),
                    ],
                  ),
                  SizedBox(height: height * .10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Sponsor_Image(
                          title: "PRINT MEDIA PARTNER",
                          link: "sponsors/21.png"),
                      Sponsor_Image(
                          title: "STATIONARY PARTNER",
                          link: "sponsors/22.png"),
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
            height: 0.4 * MediaQuery.of(context).size.width,
            width: 0.4 * MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(link),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5.0, width: 0.1),
      ],
    );
  }
}
