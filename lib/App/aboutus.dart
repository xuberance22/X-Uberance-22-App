import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'ABOUT  US',
          style: TextStyle(
            color: Colors.grey[200],
            fontSize: 0.045 * MediaQuery.of(context).size.width,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Xavier1',
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/FinalBG.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: Column(
            children: [
              SizedBox(height:0.09*MediaQuery.of(context).size.width),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(

                    children: [

                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          SizedBox(height: 0.01*height),
                          SizedBox(
                            height: .25*height,
                            child: const Image(
                              image: AssetImage('assets/School_Logo(1).png'),
                              fit: BoxFit.fill,
                            ),


                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("ST. XAVIER'S COLLEGIATE SCHOOL",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Xavier1',
                                    fontSize: .03*height)),
                          ),
                          const Divider(
                            color: Colors.white,
                            indent: 0,
                            endIndent: 0,
                            height: 70,
                            thickness: 2,
                          ),


                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 20),
                            child: Text("In November, 1843, a fire broke out in San Souci Theatre, no. 10 Park Street, Kolkata. It was an accident that changed the history of Park Street and that of “The City of Joy”, Kolkata as well. Fire is indeed a destroyer but is also a purifier that gets rid of the “old” and creates something new. The fire that destroyed the San Souci Theatre on that day rekindled another fire-“The Fire of Education”. Eventually that Burt out theatre become the home of an institution that redefined modern education. A small band of Belgium Jesuits headed by Father Henry Depelchin opened their hearts and the doors of their abode at 10, Park Street(Now 30, Mother Teresa Sarani) to bece what today stands as a symbol of quality, education in the country… St. Xavier’s Collegiate School, Kolkata.After 162 years since its opening, St. Xaviers’s Collegiate School still is and will be an inspiration of an organisation for all. Respecting and displaying proper edicate has been a major part of Xaverian culture and it is one that all future generations look to uphold.\n\n NIHIL ULTRA, NOTHING BEYOND.",

                              textAlign: TextAlign.center,
                              style : TextStyle(
                                fontFamily: "Xavier3",
                                color: Colors.white,
                                fontSize: 0.025 * height,
                              ),

                            ),

                          ),
                          const Divider(
                            color: Colors.white,
                            indent: 0,
                            endIndent: 0,
                            height: 70,
                            thickness: 2,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0.05*MediaQuery.of(context).size.width, 0.0, 0.05*MediaQuery.of(context).size.width, 0.0),
                            child: const Image(
                              image: AssetImage('assets/logo3.png'),
                            ),
                          ),
                          const SizedBox(height:10),
                          // Container(
                          //   height: 2/5*height,
                          //   child: Image(
                          //     image: AssetImage("assets/LOGO_FINAL.png"),
                          //
                          //   ),
                          // ),
                          Text("ABOUT \n X-UBERANCE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Xavier1',
                                fontSize: 0.035 * height,
                              )),
                          const Divider(
                            color: Colors.white,
                            indent: 0,
                            endIndent: 0,
                            height: 70,
                            thickness: 2,
                          ),
                           Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 100),
                            child: Text("St. Xavier’s Collegiate School is proud to present to you the 16th edition of its cultural fest, X-Uberance. X-Uberance has a rich history and an excellent record in the past years, and this year around, we hope to continue and brighten the school spirits in the students of the City of Joy. This duration also helps us break free from our mundane routines and participate in friendly competitions with our counterparts from all around the city. As the saga of X-Uberance continues we look forward to the 14th, 15th and 16th of October,2022 where we have in store a wide variety of events because we believe in helping the students of Kolkata nurture and develop their skills and in turn, help in Excemplifiyng Excellence.",

                              textAlign: TextAlign.center,

                              style : TextStyle(
                                fontFamily: "Xavier3",
                                color: Colors.white,
                                fontSize: 0.025 * height,
                              ),
                            ),

                          ),
                        ],

                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}