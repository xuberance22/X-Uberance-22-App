import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatefulWidget {
  String name;
  String des;
  String mapLink;
  String loc;

  Location(
      {Key? key, required this.name, required this.des, required this.mapLink, required this.loc})
      : super(key: key);

  @override
  State<Location> createState() =>
      _LocationState(name: name, des: des, mapLink: mapLink, loc: loc);
}

class _LocationState extends State<Location> {
  String name;
  String des;
  String mapLink;
  String loc;

  _LocationState(
      {Key? key, required this.name, required this.des, required this.mapLink, required this.loc});

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height:90),
            Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height:30),
                          Text(
                            '$name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053*width,
                              fontFamily: 'Xavier2',
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text(
                            '$des',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053*width,
                              fontFamily: 'Xavier2',
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: (4.5 / 5) * ((1.6 / 5) * height),
                            width: (1/ 5.5) * width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(mapLink+".png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$loc',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.053*width,
                              fontFamily: 'Xavier2',
                            ),
                          ),
                        ],
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
