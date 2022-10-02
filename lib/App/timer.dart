import 'package:flutter/material.dart';
import 'dart:async';

class Countdown extends StatefulWidget {
  const Countdown({Key? key}) : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  Duration duration = DateTime(2022,10,14,11,0,0,0,0).difference(DateTime.now());
  Timer? timer;
double a=0;


  @override
  void initState()
  {
    super.initState();
    startTimer();
  }
  void subtractTime()
  {
    setState((){
      final seconds = duration.inSeconds - 1;
      duration = Duration(seconds: seconds);
    });
  }
  void startTimer(){
    timer = Timer.periodic(const Duration(seconds:1), (_)=> subtractTime());
  }
  @override
  Widget build(BuildContext context) {
    return buildTime(context);

  }
  Widget buildTime(BuildContext context)
  {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final days = twoDigits(duration.inDays);
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    a=MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: days, header:'DAYS'),
        SizedBox(width: a*0.05),
        buildTimeCard(time: hours, header:'HOURS'),
        SizedBox(width: a*0.05),
        buildTimeCard(time: minutes, header:'MINUTES'),
        SizedBox(width: a*0.05),
        buildTimeCard(time: seconds, header:'SECONDS'),
      ]
    );
  }
  Widget buildTimeCard({required String time, required String header})
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(a*0.02),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(a*0.16),
          ),
          child: Text(
            time,
            style: TextStyle(
              color: Colors.white,
              fontSize: a*0.1,
              fontFamily: 'Xavier3',
            ),
          )
        ),
        SizedBox(height:a*0.05),
        Text(header, style: TextStyle(color: Colors.white,fontFamily: 'Xavier1',fontSize: a*0.035,)),
      ],
    );
  }

}
