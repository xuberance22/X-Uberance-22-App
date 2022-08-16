import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: AboutUs()
  ));
}

class AboutUs extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/sponsors_background.png'),
                  fit: BoxFit.cover,
                )
            ),
          ),
         Container(color: Colors.black.withOpacity(0.3),),
          Container(
            child: Image.asset('images/aboutUsDivider.png'),
            height: 180,
            width: 1300,
          ),
          Stack(
            children: <Widget>[
              Column(
                children: [
                  Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 300,
                          child: Image.asset('images/school_logo.png'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 310),
                  Expanded(
                    flex: 2,
                    child: Scrollbar(
                      controller: _controller,
                      thickness: 5,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 50.0),
                          child: Text(
                            'St. Xavier\'s Collegiate School is not just a name. It is an emotion that exists inside the heart of every Xaverian who’s been a part of this glorious institution. Time and again, the school has produced individuals who are not only doing well in life, but also giving back to society. Beyond the curriculum, our alma mater stands tall in infusing the qualities of leadership, creativity, confidence thereby nurturing the complete development of one’s character. Above all, it has always ignited our minds to think out of the box and that is what has been the driving force behind the genesis of X-UBERANCE ’21.\nDefining X-UBERANCE ’21 as an inter-school fest would not be fair. At such a critical juncture of time like today, where tomorrow appears to be irrevocably broken, X-UBERANCE ’21 is here to offer a new picture, one that is different from despondency and pessimism.This pandemic has led us to a new way of life but it has not been able to extinguish our perseverance or curb our determination. This year, we have devised the perfect mix of the new way of living hybridized with values that never grow old with time.\nWe aspire to bring together students from different schools and provide them with a stage to unleash their talents. We have tried to incorporate the most diverse spectrum of events hoping it can present an opportunity to the maximum number of students who await to showcase their skills in the fields they hone. A plethora of events ranging from challenging one’s intelligence of the highest calibre to showcasing one’s talent among the best out of the best have been designed because we strive to bring out the very best in you. Amidst this spirit of healthy competition, we also aim to make generous contributions to the less privileged and truly stand out as men for others.\nX-UBERANCE ‘21 is here to battle the custom of celebrating mediocrity. Spanning over a range of two high intensity days, we are very excited to see what you all bring to the table. Ambitious in its vision and resilient in its efforts, X-UBERANCE ’21 is all set to take off!',
                            textAlign:TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'texts',
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}