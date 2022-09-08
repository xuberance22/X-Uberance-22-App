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
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: width*0.01, height:0.1),
            BackButton(
              color: Colors.white,
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
          image: DecorationImage(image: AssetImage("images/sponsors_bg.png"),
            fit: BoxFit.cover,
          ),
        ),

        child: Column(
          children: [
            const SizedBox(height:30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(

                  children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [

                    Text(
                      'ABOUT US',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontFamily: 'Xavier1',
                      ),
                    ),
                  ],
                ),


                const Divider(
                  color: Colors.white,
                  indent: 0,
                  endIndent: 0,
                  height: 20,
                  thickness: 2,
                ),


                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                    SizedBox(height: 0.01*height),
                Container(
                    height: 2/5*height,
                    width : (2/5),
                  child: Image.asset("images/sxcslogo.png"),
                    
                  
              ),
              const Text("ST. XAVIER'S COLLEGIATE SCHOOL", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 25)),
              const Divider(
                color: Colors.white,
                indent: 0,
                endIndent: 0,
                height: 70,
                thickness: 2,
              ),


              const Padding(
                padding: EdgeInsets.fromLTRB(70, 0, 70, 100),
                child: Text("In November, 1843, a fire broke out in San Souci Theatre, no. 10 Park Street, Kolkata. It was an accident that changed the history of Park Street and that of “The City of Joy”, Kolkata as well. Fire is indeed a destroyer but is also a purifier that gets rid of the “old” and creates something new. The fire that destroyed the San Souci Theatre on that day rekindled another fire-“The Fire of Education”. Eventually that Burt out theatre become the home of an institution that redefined modern education. A small band of Belgium Jesuits headed by Father Henry Depelchin opened their hearts and the doors of their abode at 10, Park Street(Now 30, Mother Teresa Sarani) to bece what today stands as a symbol of quality, education in the country… St. Xavier’s Collegiate School, Kolkata.After 162 years since its opening, St. Xaviers’s Collegiate School still is and will be an inspiration of an organisation for all. Respecting and displaying proper edicate has been a major part of Xaverian culture and it is one that all future generations look to uphold. NIHIL ULTRA, NOTHING BEYOND.",

                  style : TextStyle(
                    color: Colors.white,
                  ),
                ),

              ),
                      Container(
                        height: 2/5*height,
                        width : (2/5),
                        child: Image.asset("images/xuberancelogo.png"),
                      ),
                      const Text("ABOUT X-UBERANCE", style: TextStyle(color: Colors.white, fontFamily: 'Xavier1', fontSize: 25)),
                      const Divider(
                        color: Colors.white,
                        indent: 0,
                        endIndent: 0,
                        height: 70,
                        thickness: 2,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(70, 0, 70, 100),
                        child: Text("St. Xavier’s Collegiate School is proud to present to you the 16th edition of its cultural fest, X-Uberance. X-Uberance has a rich history and an excellent record in the past years, and this year around, we hope to continue and brighten the school spirits in the students of the City of Joy. This duration also helps us break free from our mundane routines and participate in friendly competitions with our counterparts from all around the city. As the saga of X-Uberance continues we look forward to the 14th, 15th and 16th of October,2022 where we have in store a wide variety of events because we believe in helping the students of Kolkata nurture and develop their skills and in turn, help in Excemplifiyng Excellence.",

                          style : TextStyle(
                            color: Colors.white,
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
    );
  }

}