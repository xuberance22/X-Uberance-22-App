import 'package:flutter/material.dart';
import 'timer.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
            children: <Widget>[
              SafeArea(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/FinalBG.png'),
                        fit: BoxFit.cover
                    ),
                  ),
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        backgroundColor: Colors.black,
                        title: Text('X-Uberence 2022'),
                      ),
                      SliverToBoxAdapter(
                        child :
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
                                  color:Colors.transparent
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Sponsors'),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.black.withOpacity(0.5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
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
                                  color:Colors.transparent
                              ),
                            ],
                          ),
                          primary: false,
                        ),

                      ),
                    ],
                  ),
                ),
              ),
            ]
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.abc)
            ),
          ],
          //onTap:
        ),
    );
  }
}
