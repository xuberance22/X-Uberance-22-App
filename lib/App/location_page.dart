import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatefulWidget {
  String name;
  String des;
  String mapLink;
  String loc;
  String floor;

  Location(
      {Key? key,
      required this.name,
      required this.des,
      required this.mapLink,
      required this.loc,
      required this.floor})
      : super(key: key);

  @override
  State<Location> createState() => _LocationState(
      name: name, des: des, mapLink: mapLink, loc: loc, floor: floor);
}

class _LocationState extends State<Location> {
  String name;
  String des;
  String mapLink;
  String loc;
  String floor;
  _LocationState(
      {Key? key,
      required this.name,
      required this.des,
      required this.mapLink,
      required this.loc,
      required this.floor});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 90),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Text(
                    '$name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 0.053 * height,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                  SizedBox(
                    height: 0.01 * height,
                  ),
                  Text(
                    '$des',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 0.042 * height,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                  SizedBox(
                    height: 0.03 * height,
                  ),
                  Text(
                    '$loc',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 0.033 * height,
                      fontFamily: 'Xavier2',
                    ),
                  ),
                  SizedBox(
                    height: 0.03 * height,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$floor',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.033 * height,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.03 * height,
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.zoom_in),
                      style:
                      ButtonStyle(foregroundColor:MaterialStateProperty.all<Color>(Colors.white)),
                      label: Text(
                        'Pinch to zoom in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Xavier3',
                            fontSize: 0.02 * height),
                      )),

                  InteractiveViewer(
                    child: Container(
                      height: 0.725 * height,
                      width: 0.9 * width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(mapLink),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: 0.05 * height,
                  // ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
