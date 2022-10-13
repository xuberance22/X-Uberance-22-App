import 'package:flutter/material.dart';
import '../services/leaderboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Leaderboard extends StatefulWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  State<Leaderboard> createState() => _LeaderboardState();
}

class _LeaderboardState extends State<Leaderboard> {
  List<String> docIds = [];

  Future getDocId() async {
    FirebaseFirestore.instance
        .collection('leaderboard')
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
      docIds.add(element.reference.id);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Leaderboard",style: TextStyle(fontFamily: 'Xavier1'),),
        backgroundColor: Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: StreamBuilder(
          stream: readLeaderboard(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final leaderboard = snapshot.data!;
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/FinalBG.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListView(
                  children: leaderboard.map(buildLeaderboard).toList(),
                ),
              );
            }
            else
              return CircularProgressIndicator();
          }),
    );
  }

  Stream<List<SchoolLeaderboard>> readLeaderboard() =>
      FirebaseFirestore.instance.collection('leaderboard').orderBy('points', descending: true).snapshots().map(
              (snapshot) => snapshot.docs
              .map((doc) => SchoolLeaderboard.fromJson(doc.data()))
              .toList());

  Widget buildLeaderboard(SchoolLeaderboard sl) => ListTile(
      title: Text(sl.name,style: TextStyle(color: Colors.white,fontFamily: 'Xavier3', fontSize: 0.0175 * MediaQuery.of(context).size.height),),
      trailing: Text(sl.points.toString(),style: TextStyle(color: Colors.white,fontFamily: 'Xavier3',fontSize: 0.0175 * MediaQuery.of(context).size.height),)
  );
}