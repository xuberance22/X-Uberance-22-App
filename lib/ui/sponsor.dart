import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sponsors extends StatefulWidget {

  @override
  _SponsorsState createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {

  Widget _Card(AssetImage logo){
    return Container(
      constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/card_logo.png"),
            )
        ),
        child: Image(image: logo, fit: BoxFit.cover,),
    );
  }

  Widget _header(){
    return Hero(
      tag: "SPONSORS",
      child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Image.asset("images/lines.png",
                    width: 0.25*MediaQuery.of (context).size.width,
                    height: 0.13*MediaQuery.of (context).size.height),
                Image.asset("images/linesRevert.png",
                  width: 0.25*MediaQuery.of (context).size.width,
                  height: 0.13*MediaQuery.of (context).size.height,),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 0.13*MediaQuery.of (context).size.height),
                Center(
                  child: Image.asset("images/SPONSORS.png",
                      height: 50,
                      width: 350)
                ),
              ],
            ),]
      ),
    );
  }

  Widget title(){
    return Container(
        height: 0.2*MediaQuery.of (context).size.height,
        width: 0.45*MediaQuery.of (context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/card_background.jpg"),
            )
        ),
        child:Image(image: AssetImage("images/sponsors/title.jpg"), fit: BoxFit.cover,));
  }

  Widget _CardMenu() {
    return Column(
      children: [
        _header(),
        title(),
        Flexible(
          child: Scrollbar(
            isAlwaysShown: true,
            child: GridView.count(
                crossAxisCount: 2,
                children: [
                  for(int i=0; i<15; i++)
                    Card(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 40),
                      child: _Card(AssetImage("images/sponsors/$i.jpg")),
                    ),
                ]
            ),
          ),
        ),
      ],
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
        body: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/sponsors_background.png"),
                fit: BoxFit.cover,
              )
          ),
          child: Container(color: Colors.black.withOpacity(0.3),child: _CardMenu()),
        )
    );
  }
}
