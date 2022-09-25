import 'package:flutter/material.dart';
import 'dart:async';

class Countdown extends StatefulWidget {
  const Countdown({Key? key}) : super(key: key);

  @override
  State<Countdown> createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  Duration duration = DateTime(2022,10,14,12,0,0,0,0).difference(DateTime.now());
  Timer? timer;

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
    return buildTime();

  }
  Widget buildTime()
  {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final days = twoDigits(duration.inDays);
    final hours = twoDigits(duration.inHours.remainder(24));
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: days, header:'DAYS'),
        const SizedBox(width:70),
        buildTimeCard(time: hours, header:'HOURS'),
        const SizedBox(width:70),
        buildTimeCard(time: minutes, header:'MINUTES'),
        const SizedBox(width:70),
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
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            time,
            style: const TextStyle(
              color: Colors.amber,
              fontSize: 50,
              fontFamily: 'Xavier3',
            ),
          )
        ),
        const SizedBox(height:10),
        Text(header, style: const TextStyle(color: Colors.amber,fontFamily: 'Xavier1',)),
      ],
    );
  }

}
