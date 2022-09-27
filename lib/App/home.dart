import 'package:flutter/material.dart';
import 'package:xuberance22/App/eventSporting.dart';
import 'aboutus.dart';
import 'timer.dart';
import 'schedule.dart';
import 'teams.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        title: Text('Home',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Xavier1',
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/FinalBG.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Column(
            children: <Widget>[
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
                        padding: EdgeInsets.fromLTRB(0.05*MediaQuery.of(context).size.width, 0.05*MediaQuery.of(context).size.height, 0.05*MediaQuery.of(context).size.width, 0.0),
                        child: Image(
                          image: AssetImage('assets/logo3.png'),
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.05*MediaQuery.of(context).size.width, 0.0, 0.05*MediaQuery.of(context).size.width, 0.0),
                        child:Image(
                          image:AssetImage('assets/name1.png'),
                        ),
                      ),
                      SizedBox(height: 3),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.05*MediaQuery.of(context).size.width, 0.0, 0.05*MediaQuery.of(context).size.width, 0.0),
                        child:Image(
                          image:AssetImage('assets/motto1.png'),
                        ),
                      ),
                      SizedBox(
                        height: 0.05*MediaQuery.of(context).size.height,
                      ),
                      Container(
                        child: Countdown(),
                      ),
                      Divider(
                        thickness: 0.002*MediaQuery.of(context).size.height,
                          height: 0.075*MediaQuery.of(context).size.height,
                          color: Colors.transparent
                      ),
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
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => AboutUs()));
                            },
                            child: Text('ABOUT US',
                              style: TextStyle(
                                fontFamily: 'Xavier2',
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black.withOpacity(0.5),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.005*MediaQuery.of(context).size.width),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                          height: 0.05*MediaQuery.of(context).size.width,
                          color: Colors.transparent
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text('REACH US',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier1',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.05*MediaQuery.of(context).size.height,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 0.05*MediaQuery.of(context).size.width),
                          Text('98365 63241',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier3',
                            ),
                          ),
                          SizedBox(width:0.3*MediaQuery.of(context).size.width),
                          IconButton(
                            onPressed: (){
                              launchUrl(Uri.parse("https://www.instagram.com/xuberence22/?igshid=YmMyMTA2M2Y%3D"));
                            },
                            color: Colors.white,
                            icon: FaIcon(FontAwesomeIcons.instagram),
                              ),
                          SizedBox(width:3),
                          TextButton(
                            onPressed: (){
                              launchUrl(Uri.parse("https://www.instagram.com/xuberence22/?igshid=YmMyMTA2M2Y%3D"));
                            },
                            child: Text('@xuberence22',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Xavier3',
                                ),
                            ),
                          ),

                          ],
                      ),
                      SizedBox(height:0.02*MediaQuery.of(context).size.height),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 0.05*MediaQuery.of(context).size.width),
                          Text('90076 83631',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Xavier3',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height:3),
                    ],
                  ),
                  //primary: false,
                ),
              ),
              BottomAppBar(
                color: Color.fromARGB(255, 3, 12, 34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                      Navigator.pushReplacementNamed(context, '/');
                      },
                      color: Colors.white,
                      icon: Icon(Icons.home),
                    ),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => EventsSporting()));
                      },
                      color: Colors.white,
                      icon: Icon(Icons.videogame_asset),
                    ),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Schedule(day: 1,)));
                      },
                      color: Colors.white,
                      icon: Icon(Icons.calendar_month),
                    ),
                    IconButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Team()));
                      },
                      color: Colors.white,
                      icon: Icon(Icons.people),
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}