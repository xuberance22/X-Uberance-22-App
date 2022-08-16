import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:xuberance_21/ui/menu.dart';

class VideoSplashScreen extends StatefulWidget {
  final FirebaseFirestore firestoreInstance;
  final FirebaseAuth authInstance;

  VideoSplashScreen(
      {required this.firestoreInstance, required this.authInstance});

  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<VideoSplashScreen> {
  late VideoPlayerController playerController =
      VideoPlayerController.asset("videos/intro.mp4");
  late VoidCallback listener;

  @override
  @override
  void initState() {
    super.initState();
    listener = () {
      setState(() {});
    };
    playerController.play();
    playerController.addListener(listener);
    playerController.setVolume(5.0);
    playerController.initialize();

    ///video splash display only 5 second you can change the duration according to your need
    startTime();
  }

  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    playerController.setVolume(0.0);
    playerController.removeListener(listener);
    Navigator.of(context).pop("videos/intro.mp4");
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MenuPage(
          firestoreInstance: widget.firestoreInstance,
          authInstance: widget.authInstance,
        ),
      ),
    );
  }

  @override
  void deactivate() {
    if (playerController != null) {
      playerController.setVolume(0.0);
      playerController.removeListener(listener);
    }
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (playerController != null) playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Center(
          child: Hero(
        tag: "logo",
        child: Image.asset("images/card_logo.png"),
      )),
      Container(
        child: AspectRatio(
            aspectRatio: 9 / 16,
            child: playerController != null
                ? VideoPlayer(
                    playerController,
                  )
                : Container()),
      ),
    ]));
  }
}
