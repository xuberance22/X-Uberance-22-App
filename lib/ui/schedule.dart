import 'dart:async';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class Schedule extends StatefulWidget {
  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  /**
  List morning8name= ["X-Effusion", "X-Negotium", "X-Quizite", "X-Trivia", "X-Periment", "X-Snap"];
  List afternoon8name= ["X-Act", "X-Bid", "X-Negotium", "X-Illustrate", "X-Gaana", "X-Bitorko", "X-Valo"];
  List evening8name= ["X-Periment", "X-Effusion", "X-Acoustic", "X-Negotium", "X-60"];
  List morning9name= ["X-Raga", "X-Effusion", "X-Innovate", "X-Mate", "X-Negotium", "X-Quizite", "X-Periment", "X-Valo"];
  List afternoon9name= ["X-Vogue", "X-Enunciate", "X-Splash", "X-Calibre", "X-Trial", "X-Innovate"];
  List evening9name= ["X-Negotium", "X-Periment", "X-Travagance"];

  List morning8= ["Literary Event: Round 1", "Business Event: Round 1", "Quiz: Prelim", "Junior Quiz", "Science Event: Round 1", "Photography"];
  List afternoon8= ["Ad Spoof", "Cricket Auction", "Business Event: Round 2", "Sit 'n draw", "Hindi Antakshri", "Bengali Debate", "Valorant: Group Stage"];
  List evening8= ["Science Event: Round 2", "Literary Event: Round 2", "Western Music", "Business Event: Round 3", "One Minute To Fame"];
  List morning9= ["Eastern Music", "Literary Event: Round 3", "Shark Tank + Marketing: Round 1", "Chess", "Business Event: Round 4", "Quiz: Final", "Science Event: Round 3", "Valorant: Knockout"];
  List afternoon9= ["Fashion Show", "Elocution", "Art", "English Debate", "Moot Court", "Shark Tank + Marketing: Round 2"];
  List evening9= ["Business Event: Round 5", "Science Event: Round 4", "Western Dance"];
*/

  List morning8name= ["X-Effusion: Round 1", "X-Negotium: Round 1", "X-Quizite: Prelim", "X-Trivia", "X-Periment: Round 1", "X-Innovate:Auction", "X-Snap"];
  List afternoon8name= ["X-Act", "X-Bid", "X-Negotium: Round 2", "X-Gaana", "X-Bitorko", "X-Valo: Group Stage"];
  List evening8name= ["X-Periment: Round 2", "X-Effusion: Round 2", "X-Acoustic", "X-Negotium: Round 3", "X-60"];
  List morning9name= ["X-Raga", "X-Effusion: Round 3", "X-Innovate: Round 1", "X-Mate", "X-Negotium: Round 4", "X-Quizite: Final", "X-Periment: Round 3", "X-Valo: Knockout"];
  List afternoon9name= ["X-Vogue", "X-Enunciate", "X-Splash", "X-Illustrate", "X-Calibre", "X-Trial", "X-Innovate: Round 2"];
  List evening9name= ["X-Negotium: Round 5", "X-Periment: Round 4", "X-Travagance"];

  List morning8= ["Literary Event", "Business Event", "Quiz", "Junior Quiz", "Science Event", "Shark Tank + Marketing", "Photography"];
  List afternoon8= ["Ad Spoof", "Cricket Auction", "Business Event", "Hindi Antakshri", "Bengali Debate", "Valorant"];
  List evening8= ["Science Event", "Literary Event", "Western Music", "Business Event", "One Minute To Fame"];
  List morning9= ["Eastern Music", "Literary Event", "Shark Tank + Marketing", "Chess", "Business Event", "Quiz", "Science Event", "Valorant"];
  List afternoon9= ["Fashion Show", "Elocution", "Art", "Sit 'n Draw", "English Debate", "Moot Court", "Shark Tank + Marketing"];
  List evening9= ["Business Event", "Science Event", "Western Dance"];

  List morning8time= ["9 am-11 am", "9 am-12 pm", "9 am-1 pm", "9 am-1 pm", "10 am-12 pm", "11 am- 1 pm", "12 pm-6 pm"];
  List afternoon8time= ["1 pm", "1 pm-6 pm", "1:30 pm-3:30 pm", "2 pm-5 pm", "2 pm-6 pm", "2 pm-6 pm"];
  List evening8time= ["3 pm-6 pm", "4:30pm-5:30pm", "5 pm", "5 pm-6 pm", "Throughout\n  the day"];
  List morning9time= ["9 am", "9 am-11 am", "9 am-12 pm", "9 am-11 am", "9 am-1 pm", "9 am-1 pm", "10 am-1 pm", "11 am-3 pm"];
  List afternoon9time= ["1 pm", "1 pm-4 pm", "1 pm-5 pm", "2 pm-4 pm", "2 pm-6 pm", "2 pm-6 pm", "2:30 pm-6 pm"];
  List evening9time= ["3 pm-5 pm", "3 pm-6 pm", "5 pm"];

  final PageController _cardController1 = PageController();
  final PageController _cardController2 = PageController();
  final PageController _pageController = PageController();
  late double count1= 0.0, count2=0.0;

  Widget _header(){
    return Hero(
      tag: "SCHEDULE",
      child: Stack(
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Image.asset("images/lines2.png",
                        width: 0.25*MediaQuery.of (context).size.width,
                        height: 0.13*MediaQuery.of (context).size.height,),
                      Image.asset("images/lines2Revert.png",
                        width:0.25*MediaQuery.of (context).size.width,
                        height: 0.13*MediaQuery.of (context).size.height,),
                    ],
                  ),
                ]
            ),
            Column(
              children: [
                SizedBox(height:0.095*MediaQuery.of (context).size.height),
                Center(
                  child: Image.asset("images/SCHEDULE.png",
                      height: 50,
                      width: 350)
                ),
              ],
            ),]
      ),
    );

  }

  Widget _cardListBig(event, name, time){
    return ListTile(
      title: Text(
          "$event",
          style: TextStyle(
              fontFamily: "heading",
              fontSize: (100-event.toString().length)*0.0004*MediaQuery.of (context).size.width
          )
      ),
      subtitle: Text(
          "$name",
          style: TextStyle(
              fontFamily: "futura",
              fontSize: (100-name.toString().length)*0.0005*MediaQuery.of (context).size.width
          )
      ),
      trailing: Text(
          "$time",
          style: TextStyle(
              fontFamily: "futura",
              fontSize: (100-time.toString().length)*0.00036*MediaQuery.of (context).size.width
          )
      ),
    );
  }

  Widget _cardListSmall(event, name, time){
    return ListTile(
      title: Text(
          "$event",
          style: TextStyle(
              fontFamily: "heading",
              fontSize: (100-event.toString().length)*0.00045*MediaQuery.of (context).size.width
          )
      ),
      subtitle: Text(
          "$name",
          style: TextStyle(
              fontFamily: "futura",
              fontSize: (100-name.toString().length)*0.0005*MediaQuery.of (context).size.width
          )
      ),
      trailing: Text(
          "$time",
          style: TextStyle(
              fontFamily: "futura",
              fontSize: (100-time.toString().length)*0.0004*MediaQuery.of (context).size.width
          )
      ),
    );
  }

  Widget _cardBig(title, event, name, time){
    return Column(
      children: [
        SizedBox(height: 0.01*MediaQuery.of (context).size.height),
        Text(
          "$title",
          style: TextStyle(
            fontFamily: "heading",
            fontSize: 30,
          )
        ),
        SizedBox(height: 0.01*MediaQuery.of (context).size.height),
        for(int i=0; i<name.length; i++)
          Flexible(child: _cardListBig(event[i], name[i], time[i])),
        SizedBox(height: 25)
      ]
    );
  }

  Widget _cardSmall(title, event, name, time){
    return Column(
        children: [
          SizedBox(height: 0.01*MediaQuery.of (context).size.height),
          Text(
              "$title",
              style: TextStyle(
                fontFamily: "heading",
                fontSize: 30,
              )
          ),
          SizedBox(height: 0.01*MediaQuery.of (context).size.height),
          for(int i=0; i<name.length; i++)
            Flexible(child: _cardListSmall(event[i], name[i], time[i])),
          SizedBox(height: 25)
        ]
    );
  }

  void _update1() {
    setState(() {
      count1 = _cardController1.page!;
    });
  }

  void _update2() {
    setState(() {
      count2 = _cardController2.page!;
    });
  }

Widget _verticalCardCarousel1(){
    return Stack(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0.48*MediaQuery.of(context).size.height),
              child: Center(
                child: Icon(Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 0.07*MediaQuery.of (context).size.height),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 0.55*MediaQuery.of(context).size.height),
                child: DotsIndicator(
                  axis: Axis.horizontal,
                  dotsCount: 3,
                  position: count1,
                  decorator: DotsDecorator(//me coming wait
                      spacing: EdgeInsets.all(2.5),
                      color: Colors.white,
                      activeColor: Colors.white,
                      activeShape: const Border(),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      size: Size.square(10)
                  ),
                 ),
              ),
              ),
          ],
        ),
     StackedCardCarousel(
       onPageChanged: (pageIndex) => _update1(),
     pageController: _cardController1,
     spaceBetweenItems: 600,
       initialOffset: -10,
       items: [
         Center(
           child: Column(
           children: [
             Container(
               height: 0.53*MediaQuery.of (context).size.height,
               width: 0.95*MediaQuery.of (context).size.width,
               child:Card(
                   shape: _cardShape(),
                   margin: EdgeInsets.all(10),
                   color: Colors.blue[400],
                   child: _cardSmall("Morning", morning8name, morning8, morning8time)
               ),
             ),
           ],
           ),
     ),
         Center(
           child: Container(
             height: 0.53*MediaQuery.of (context).size.height,
             width: 0.90*MediaQuery.of (context).size.width,
             child:Padding(
               padding: EdgeInsets.only(top: 30),
               child: Card(
                   shape: _cardShape(),
                   margin: EdgeInsets.all(10),
                   color: Colors.blue[600],
                   child: _cardBig("Afternoon", afternoon8name, afternoon8, afternoon8time)
               ),
             )
           ),
         ),
         Center(
           child: Container(
               height: 0.53*MediaQuery.of (context).size.height,
               width: 0.83*MediaQuery.of (context).size.width,
               child:Padding(
                 padding: EdgeInsets.only(top: 65),
                 child: Card(
                     shape: _cardShape(),
                     color: Colors.blue[800],
                     child:_cardBig("Evening", evening8name, evening8, evening8time)
                 ),
               )
           ),
         )
       ]
       ),
      ],
    );
  }

Widget _verticalCardCarousel2(){
    return Stack(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0.48*MediaQuery.of(context).size.height),
              child: Center(
                child: Icon(Icons.keyboard_arrow_up,
                    color: Colors.white,
                    size: 0.07*MediaQuery.of (context).size.height),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 0.55*MediaQuery.of(context).size.height),
                child: DotsIndicator(
                  axis: Axis.horizontal,
                  dotsCount: 3,
                  position: count2,
                  decorator: DotsDecorator(//me coming wait
                      spacing: EdgeInsets.all(2.5),
                      color: Colors.white,
                      activeColor: Colors.white,
                      activeShape: const Border(),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      size: Size.square(10)
                  ),
                ),
              ),
            ),
          ],
        ),
        StackedCardCarousel(
            onPageChanged: (pageIndex) => _update2(),
            pageController: _cardController2,
            spaceBetweenItems: 600,
            initialOffset: -10,
            items: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 0.53*MediaQuery.of (context).size.height,
                      width: 0.95*MediaQuery.of (context).size.width,
                      child:Card(
                          shape: _cardShape(),
                          margin: EdgeInsets.all(10),
                          color: Colors.blue[400],
                          child: _cardBig("Morning", morning9name, morning9, morning9time)
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                    height: 0.53*MediaQuery.of (context).size.height,
                    width: 0.90*MediaQuery.of (context).size.width,
                    child:Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Card(
                          shape: _cardShape(),
                          margin: EdgeInsets.all(10),
                          color: Colors.blue[600],
                          child: _cardSmall("Afternoon", afternoon9name, afternoon9, afternoon9time)
                      ),
                    )
                ),
              ),
              Center(
                child: Container(
                    height: 0.53*MediaQuery.of (context).size.height,
                    width: 0.83*MediaQuery.of (context).size.width,
                    child:Padding(
                      padding: EdgeInsets.only(top: 65),
                      child: Card(
                          shape: _cardShape(),
                          color: Colors.blue[800],
                          child:_cardSmall("Evening", evening9name, evening9, evening9time)
                      ),
                    )
                ),
              )
            ]
        ),
      ],
    );
  }

Widget _date(date){
    return Column(
        children: [
          Text(
              "$date",
              style: TextStyle(
                  fontSize: 80,
                  fontFamily: "heading",
                  color: Colors.white
              )
          ),
          Text(
              "october",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "heading",
                  color: Colors.white
              )
          ),
        ]
    );
  }

Decoration _backgroundImage(){
    return BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/sponsors_background.png"),
            fit: BoxFit.cover
        )
    );
  }

ShapeBorder _cardShape(){
    return RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
    );
  }

Widget _page1(){
    return Column(
        children: [
          _header(),
          Flexible(
              child: _verticalCardCarousel1()),
          Row(
            children: [
              SizedBox(width: 0.33*MediaQuery.of (context).size.width),
              _date("08"),
              IconButton(
                  onPressed: () {
                    _pageController.jumpToPage(1);
                },
                icon: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
                size: 50
                    ),
                ),
                SizedBox(width: 0.02*MediaQuery.of (context).size.width),
                ],
            ),
            SizedBox(height: 0.03*MediaQuery.of (context).size.width)
      ]
    );
  }

Widget _page2(){
    return Column(
        children: [
          _header(),
          Flexible(child: _verticalCardCarousel2()),
          Row(
            children: [
              SizedBox(width: 0.16*MediaQuery.of (context).size.width),
              IconButton(
                onPressed: () {
                  _pageController.jumpToPage(0);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 50
                ),
              ),
              SizedBox(width: 0.05*MediaQuery.of (context).size.width),
              Center(child: _date("09")),
            ],
          ),
          SizedBox(height: 0.03*MediaQuery.of (context).size.width)
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
          constraints: BoxConstraints.expand(),
          decoration: _backgroundImage(),
          child: Container(color: Colors.black.withOpacity(0.3), child: _page1())
          ),
          Container(
              constraints: BoxConstraints.expand(),
              decoration: _backgroundImage(),
              child: Container(color: Colors.black.withOpacity(0.3),child: _page2())
          ),
      ]
      )
    );
  }
}
