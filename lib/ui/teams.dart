import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Teams extends StatefulWidget {
  @override
  _TeamsState createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  final List _tech = [
    "Purab Rohra",
    "Kushal Kapoor",
    "Keyur Doshi",
    "Raghav Kajaria",
    "Harsh Bharadwaj",
    "Amani Agrawal",
    "Hitansh Agarwal",
    "Vedant Kejariwal",
    "Ayon Basu"
  ];

  List _events = [
    "X-Trial",
    "X-Quizite",
    "X-Calibre",
    "X-Bid",
    "X-Gaana",
    "X-Bitorko",
    "X-Mate",
    "X-Valo",
    "X-Travagance",
    "X-Vogue",
    "X-Raga",
    "X-Acoustic",
    "X-Act",
    "X-Negotium",
    "X-Periment",
    "X-Effusion",
    "X-Innovate",
    "X-Bet",
    "X-60",
    "X-Splash",
    "X-Snap",
    "X-Meme",
    "X-Enunciate",
    "X-Illustrate",
    "X-Glamour",
    "X-Trivia",
    "X-Hop",
    "X-Tunes"
  ];
  List _eventHeads = [
    "Aditya Rai \nAryaraj Banerjee \nHarsh Bharadwaj",
    "Swastik Nandy \nAryaraj Banerjee \nRitindranath Tagore \nNirupam Biswas \nHitansh Agarwal\nAryaav Goswami",
    "Baidurjya Saha\nSwastik Nandy\nAttiksh Ansool Panda\nAmani Agrawal\nDhruv Bajesaria",
    "Keshav Bhagat\nRevant More\nSaharsh Pasari\nVishesh Soni\nYuvraj Verma\nVarenya Kanoria",
    "Shrikrrit Bhatter\nAditya Rai\nVatsal Agarwal \nRiddham Agarwal",
    "Aryaraj Banerjee\nSagnik Chakraborty\nSujatro Sarkar\nRudrarup Paul",
    "Swastik Nandy\nNaman Jain\nAabesh Biswas\nRishaan Singhania",
    "Swastik Nandy\nSagnik Ghosh\nAnurup Roy",
    "Keyur Doshi\nRevant More\nUpamanyu Banerjee\nShubham Kothari",
    "Keshav Bhagat\nAditya Rai\nKrish Mehta\nAryan Jain",
    "Naman Jain\nAryaraj Banerjee \nAryan Mehra\nSparsh Lohia",
    "Shrikrrit Bhatter\nRudra Agarwal\nAmitabh Kunchey\nRaj Mehta",
    "Keyur Doshi\nRudra Agarwal\nRomit David\nHarsh Chitlangia\nSiddhant Narsaria",
    "Rishab Dugar\nKeshav Bhagat\nNaman Jain\nRudra Agarwal\nRevant More\nVedant Banka\nDhruv Kapoor\nKrishaan Raha",
    "Baidurjya Saha\nKeyur Doshi\nPurab Rohra\nKushal Kapoor\nSwastik Nandy\nVedant Kejariwal\nHitansh Agarwal\nYuvraj Verma",
    "Baidurjya Saha\nKeyur Doshi\nShrikrrit Bhatter\nNaman Jain\nRudra Agarwal\nRaghav Kajaria\nDhruv Bajesaria",
    "Rishab Dugar\nRudra Agarwal\nAkshat Saraogi\nShubham Kothari\nVarenya Kanoria",
    "Baidurjya Saha\nKeyur Doshi\nRishab Dugar",
    "Keyur Doshi\nRevant More\nAadit Gupta\nAmani Agrawal",
    "Rudra Agarwal\nRevant More\nAadit Gupta\nKrishnav Shandilya",
    "Rishab Dugar\nRomit David\nSparsh Lohia",
    "Shrikrrit Bhatter\nAditya Rai\nKeshav Bondia\nRishab Mookerjee",
    "Keyur Doshi\nRishab Dugar\nNaman Jain\nSparsh Lohia\nDhruv Bajesaria",
    "Shrikrrit Bhatter\nVarenya Kanoria",
    "Keshav Bhagat\nAditya Rai\nKrishnav Shandiliya",
    "Keyur Doshi \nAabesh Biswas \nPrajwal Thakur \nDhruv Bajesaria",
    "Keyur Doshi\nRevant More",
    "Aryaraj Banerjee\nSiddhant Narsaria\nRishab Mookerjee"
  ];

  Decoration _backgroundImage() {
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/sponsors_background.png"),
            fit: BoxFit.cover));
  }

  Widget _header() {
    return Hero(
      tag: "TEAM",
      child: Stack(children: [
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Column(
            children: [
              Image.asset(
                "images/lines2.png",
                width: 0.25 * MediaQuery.of(context).size.width,
                height: 0.13 * MediaQuery.of(context).size.height,
              ),
              Image.asset(
                "images/lines2Revert.png",
                width: 0.25 * MediaQuery.of(context).size.width,
                height: 0.13 * MediaQuery.of(context).size.height,
              ),
            ],
          ),
        ]),
        Column(
          children: [
            SizedBox(height: 0.085 * MediaQuery.of(context).size.height),
            Center(
                child: Image.asset("images/TEAM.png", height: 60, width: 500)),
          ],
        ),
      ]),
    );
  }

  Widget _Card(String image) {
    return Container(
        width: 160.w,
        height: 160.w,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("images/card_logo.png"),
        )),
        child: Image.asset(image));
  }

  Widget _TeachersCard(String teacher) {
    return Card(
        margin: EdgeInsets.only(top: 20),
        child: _Card("images/teachers/$teacher.jpg"));
  }

  Widget _CoreCard(String core) {
    return Card(
        margin: EdgeInsets.fromLTRB(15, 20, 0, 0),
        child: _Card("images/core/$core.jpg"));
  }

  Widget _Techlist(name) {
    return Column(
      children: [
        SizedBox(height: 30),
        Text("$name",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 0.05 * MediaQuery.of(context).size.width,
                fontFamily: "texts")),
      ],
    );
  }

  Widget _Eventlist(title, names) {
    return Column(
      children: [
        SizedBox(height: 30),
        Text("$title",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 0.06 * MediaQuery.of(context).size.width,
                fontFamily: "heading")),
        SizedBox(height: 10),
        Text("$names",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.grey.shade300,
                fontSize: 0.03 * MediaQuery.of(context).size.width,
                fontFamily: "texts")),
      ],
    );
  }

  Widget Page1() {
    return Column(children: [
      Text(
        "TEACHERS INCHARGE",
        style: TextStyle(
            fontFamily: "heading",
            color: Colors.white,
            fontSize: 0.06 * MediaQuery.of(context).size.width),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [_TeachersCard("t0"), _TeachersCard("t1")],
      ),
      SizedBox(height: 0.02.sh),
      _header(),
      SizedBox(height: 0.02.sh),
      Text(
        "CORE COMMITTEE",
        style: TextStyle(
          fontFamily: "heading",
          fontSize: 0.065 * MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < 13; i++) _CoreCard("c$i"),
            ],
          ))
    ]);
  }

  Widget Page2() {
    return Column(children: [
      SizedBox(height: 25),
      Text("TECH TEAM",
          style: TextStyle(
              fontSize: 0.1 * MediaQuery.of(context).size.width,
              fontFamily: "heading",
              color: Colors.white)),
      SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
      for (int i = 0; i < 9; i++) _Techlist(_tech[i]),
      SizedBox(height: 120),
      Center(
        child: Text("EVENT MANAGEMENT",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 0.08 * MediaQuery.of(context).size.width,
                fontFamily: "heading",
                color: Colors.white)),
      ),
      SizedBox(height: 0.02 * MediaQuery.of(context).size.height),
      for (int i = 0; i < 27; i++) _Eventlist(_events[i], _eventHeads[i]),
      SizedBox(height: 0.1 * MediaQuery.of(context).size.height),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: true,
              elevation: 0,
            ),
            extendBodyBehindAppBar: true,
            body: Container(
                constraints: BoxConstraints.expand(),
                decoration: _backgroundImage(),
                child: Container(
                    color: Colors.black.withOpacity(0.3),
                    child: Scrollbar(
                      isAlwaysShown: true,
                      child:
                          ListView(scrollDirection: Axis.vertical, children: [
                        Page1(),
                        Page2(),
                      ]),
                    )))));
  }
}
