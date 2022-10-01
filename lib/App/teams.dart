import 'package:flutter/material.dart';
import '../App/image_container_return.dart';
import 'home.dart';
import 'schedule.dart';
import 'eventSporting.dart';

class Team extends StatefulWidget {
  const Team({Key? key}) : super(key: key);

  @override
  State<Team> createState() => _TeamState();
}

class _TeamState extends State<Team> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.055,
        backgroundColor: const Color.fromARGB(255, 3, 12, 34),
        centerTitle: true,
        title: Text(
          'TEAM',
          style: TextStyle(
            color: Colors.grey[200],
            fontSize: 0.045 * MediaQuery.of(context).size.width,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Xavier1',
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/FinalBG.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "OUR  TEAM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.0875 * width,
                          fontFamily: 'Xavier1',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * MediaQuery.of(context).size.height,
                      color: Colors.white,
                      thickness: 1.0,
                    ),
                    SizedBox(height: height * .05),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "TEACHERS-IN-CHARGE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Container(
                                height: 0.3 * MediaQuery.of(context).size.width,
                                width: 0.3 * MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                    AssetImage('teamPhoto/JOEETA_BASU.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Container(
                                height: 0.3 * MediaQuery.of(context).size.width,
                                width: 0.3 * MediaQuery.of(context).size.width,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'teamPhoto/SOMNATH_DHAR.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: height * .075),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "CORE COMMITTEE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.06 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * MediaQuery.of(context).size.height,
                      color: Colors.white,
                      thickness: 1.0,
                    ),
                    SizedBox(height: height * .04),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Click on the images to know more!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                            0.03125 * MediaQuery.of(context).size.width,
                            fontFamily: 'Xavier2',
                            letterSpacing: 0.00175 * width),
                      ),
                    ]),
                    SizedBox(height: height * .03),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "CONVENER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "SHUBHAM  KOTHARI",
                            designation: "CONVENER",
                            about:
                            """Presenting you the co convener of X-Uberance, Shubham Kothari. He is also on the board of one of the most prestigious clubs in Xaviers, X-Commercia and also a part of the basketball team. (Even though he misses under the board shots) and the dance team (he is the apparent “brawn“ of the team).
From being a downright nerd to being the convener of X-uberance,his journey has been one with many ups and downs. When he reached class 11 with an amicable academic record, Shubham discovered that there were other things in the world, which he was not aware of. He's the kind of guy who shouldn't even have an Instagram account (but his dms suggest otherwise). You'd be surprised to find out that he has his own podcast (although no one listens to it). The only time he isn't listening to music, he's sleeping. Jokes apart, Shubhams contribution to this fest has been immense. With his inherent Gujrati skills and his 'jugaad', he has provided us with all the help we need. His reach extends to sponsors, event managers and what not. Shubham is overly competitive in  academics which annoys both his peers and his teachers (they hate him because he sleeps in class). He always fulfills his commitments to the group and is a man of his word.
PS: if you can't find him, he's probably thinking about being in SRCC""",
                            link: "teamPhoto/SHUBHAM_KOTHARI.png"),
                        ImgRtr(
                            name: "RIDDHAM KUMAR AGARWAL",
                            designation: "DIRECTOR",
                            about:
                            """The boy who came in as a substitute representative in class 9 has had to prove his worth time and again but to everyone's surprise, he never failed in doing so. The only IIT Aspirant in the core, he spends more of his time in school and football (where he gave the only goal our school conceded) than in studying. While he pretends to be studious, the Gonzaga House Captain is “secretly” passionate about music and is the self-proclaimed Arijit Singh of our school.
Never afraid to rewatch Mighty Raju, he is always up for any task, be it warming the benches of the football team or sitting on a call till 2 to finalize decisions for the fest.
PS: If you can’t find him, he’s probably on Instagram Live showcasing his “singing” skills.
""",
                            link: "teamPhoto/RIDDHAM_KR_AGARWAL.png"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "DHRUV  RAMPURIA",
                            designation: "CONVENER",
                            about:
                            """If discipline had a name, it would be Dhruv Rampuria. Aspiring to be a lawyer, he is fit to be the protege of Louis Litt. A board member of X-Commercia, he is an oratory genius who will make you believe anything and everything with his skills. If you don't listen to him, he'll wear you down until things are done according to him just like Leonard wore down Penny. An  epitome of discipline and order, seeing him smile is a one in a million moment. Particular in his work, he brings to the table a plethora of abilities as the co-convener of X-Uberance ‘22. Dhruv's hobbies include giving unnecessary speeches, calling unwanted meetings and bullying the juniors.
PS: If you can't find him, he's probably reviewing some documents (for the third time).""",
                            link: "teamPhoto/DHRUV_RAMPURIA.png"),
                      ],
                    ),
                    SizedBox(height: height * .055),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "SECRETARY",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "KRISH  MURJCHANDANI",
                            designation: "SECRETARY",
                            about:
                            """The secretary no one expected. His contributions to this fest have been valuable (somewhat). You name the sport and he plays it (at least he claims). He has a knack for getting his limbs broken. Always focusing on his diet and flexing his supposed muscles, he is a spoiled, hopeless kid who never stops talking (about himself). Also interested in reading books and writing poems, his favourite hobby is to use words which no one understands and then brag about it. If you ever find this guy NOT smiling it's probably because his crush blocked him.
PS: If you can't find him , he's probably at the gym trying to bench 100 kg and break his PR (he'll fail again).
""",
                            link: "teamPhoto/KRISH_MURJCHANDANI.png"),
                        ImgRtr(
                            name: "MADHAV  SHAH",
                            designation: "SECRETARY",
                            about:
                            """ A true sportsperson from his mind and body. He has been a part of every sports team of our school to have ever existed. From being 4ft in class 11 and 4ft 1 inch in class 12, he has come a long way. He might be difficult to spot on the field(without binoculars) but he manages to score enough goals or hit enough boundaries to make his opponent cry. 
From carrying the dance team on his shoulders to getting carried on the shoulders of the dance team, he deserves his post as much as he deserves the spotlight he receives in every event.
PS: If you can’t find him, he is probably trying to perfect his pull shot for the next match
""",
                            link: "teamPhoto/MADHAV_SHAH.png"),
                      ],
                    ),
                    SizedBox(height: height * .055),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "DIRECTOR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "AMANI  AGRAWAL",
                            designation: "DIRECTOR",
                            about:
                            """ A Born Leader (literally). A guy who has been the undisputed representative, vice captain and captain of Berchmans House for the past 7 years (felt like a century though) has always been a motivation for people older, younger or equal to him and people have to always look up to him, not because he is an inspiration for all but because of how tall he is.
Anyways, moving forward, the guy who never stops studying, has mood swings(a generally calm and collected person but if you see him angry, RUN) and doesn’t make a noise while sneezing, has always achieved everything he set out for and all of us know he will achieve everything except for the post he deserved...
PS: If you can’t find him, he’s probably figuring out how to get the Berchmans team ready
""",
                            link: "teamPhoto/AMANI_AGRAWAL.png"),
                        ImgRtr(
                            name: "HARSH  CHITLANGIA",
                            designation: "DIRECTOR",
                            about:
                            """Not only the house captain but also the captain of the undisputed football team(Britto). His grades might tell you that he is studious but he plays tennis better than the rest of the school COMBINED. People call him captain "cool" until he starts defending the ball in inter school football matches as well as he defended his post in X-Uberance. Also you will probably find him holding the sports trophy at the end of the year, although he didn’t win a trophy in triathlon 
jokes apart he is one of the best athletes ,no wonder we call him horsepower having stamina more than JOHNNY depp.
PS:  If you can't find him, he will probably be at training figuring out how to beat the next team
""",
                            link: "teamPhoto/HARSH_CHITLANGIA.png"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "ARYAN  JAIN",
                            designation: "DIRECTOR",
                            about:
                            """ The most chilled out person in the core who has no care for the world, Aryan’s people skills come in handy to anyone who ever needs it. A guy who never studies throughout the year and still ends up getting the best marks in most subjects, he is a person filled with luck and brains but sadly no brawn. 
He is another uncontested captain of our school from class 8. Quick on his feet, be it on the field or the dance floor, he is always at the ready for any task.
PS: If you can’t find him, he’s probably roaming around in the restaurants of Kolkata.
""",
                            link: "teamPhoto/ARYAN_JAIN.png"),
                      ],
                    ),
                    SizedBox(height: height * .055),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "TECHNICAL  DIRECTOR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "HITANSH  AGARWAL",
                            designation: "TECHNICAL  DIRECTOR",
                            about:
                            """He has been a part of all the events where even a slight tech is involved from preparing songs for Fashion Show to preparing the background video for dance which led him to being the co-founder and on the board of the newest and one of the most inclusive clubs of St. Xavier’s, X-Code (Computer Club). He is the only one visible everywhere, especially if you sit behind him in class.
Apart from all this he might be the only one brave enough to wear jeans to school and still show up to the Principal’s office casually.
Some people call him potato not because he looks like one but because he is one. 
A human cushion and the Charles Babbage of Xaviers, talking no sense maximum number of the times but still managing to be one of the smartest chaps in his batch.
PS: If you can’t find him, he’s probably editing something on his computer
""",
                            link: "teamPhoto/HITANSH_AGARWAL.png"),
                        ImgRtr(
                            name: "VEDANT  KEJARIWAL",
                            designation: "TECHNICAL  DIRECTOR",
                            about:
                            """ A driven perfectionist. From competing in almost all events be it Muns, Table Tennis, Stocks or Coding, to rejecting Math (or visa-versa) XD, Vedant has found himself to be the co-founder and on the board of St. Xavier’s Computer Club, X-Code.
Having a myriad of ideas and being the king of pre-exam anxiety ( but failing to act on it ), you can find him probably  hiding behind a computer summing up some random code. Vedant is the person who stood by one of the weirdest instagram ids and the person who puts the most pressure on the tech team. 
His enthusiasm and drive to leave this country and study abroad is way more than his enthusiasm to grow a tad bit taller. Jokes aparts when it comes to serious work, we cannot think of anyone as efficient and dedicated as him. His competitive nature is just what we need in our team.
PS: If you can’t find him, he’s probably figuring out how to get into Ivy League Universities.
""",
                            link: "teamPhoto/VEDANT_KEJARIWAL.png"),
                      ],
                    ),
                    SizedBox(height: height * .055),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "TREASURER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "HARSH  VARDHAN  KASAT",
                            designation: "TREASURER",
                            about:
                            """Ladies and Gentlemen, presenting to you Harsh Vardhan Kasat a.k.a. our very own Mr. Ambani (please note not Gujarati). It would be safe to infer Mr. Kasat as "The Money Man" of X-Uberance 22. A very unique talent of laughing at his own jokes, even before completing it, Harsh at times pulls it off but usually is unable to. 
You have to be impeccably extraordinary to be able to find fault in his accounts papers cause he hardly makes one. 
He draws most of his “inspiration” from his bench mate aka our convenor, Dhruv Rampuria and he means it when he says it. 
P.S: If you don't find him, he is busy counting money for X-Uberance ‘22...
""",
                            link: "teamPhoto/HARSH_VARDHAN_KASAT.png"),
                        ImgRtr(
                            name: "ADITYA  SHREEDHARAN",
                            designation: "TREASURER",
                            about:
                            """ From rejecting Science to being a self-proclaimed financial expert, Aditiya has found himself to be the co-treasurer of the fest and a board member, of one of the most prestigious clubs in Xaviers, X-Commericia.
Apart from being an auspicious and upbeat person, to a suprisingly good pianist, Adi is a person who always backs and upholds others ( maybe because of how tall he is ), but never stops bragging about his appearance or random advice. Competing in various business competitions and fests, Adi has proven to be a deserving member of the core. We just hope he puts in as much effort as he does in this instagram DMs XD
PS: if you can’t find him, he is probably at some house party.""",
                            link: "teamPhoto/ADITYA_SREEDHARAN.png"),
                      ],
                    ),
                    SizedBox(height: height * .055),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "PUBLIC  RELATIONS  OFFICER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.041 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      height: 0.035 * height,
                      color: Colors.white,
                      thickness: 0.0035 * width,
                      indent: 0.135 * width,
                      endIndent: 0.135 * width,
                    ),
                    SizedBox(height: height * .03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImgRtr(
                            name: "AARAV  MODI",
                            designation: "PUBLIC  RELATIONS  OFFICER",
                            about:
                            """The student to whom everyone runs to for help in maths or science. His life is just as hard as anyone else's except for the fact that he has a house for every mood. Already set to enter into the major leagues of research in various fields, he still has the dream of playing cricket. We hope he is set to manage X-Uberance just as he is set on going to the USA and then returning to India for reasons unknown. So don't be surprised to hear his name chant in the middle of the fest for no reason… just join in😉                  
PS: If you can’t find him, he’s in his Chemistry lab experimenting with polymers.
                              """,
                            link: "teamPhoto/AARAV_MODI.png"),
                        ImgRtr(
                            name: "GOURAB  SAHA",
                            designation: "PUBLIC  RELATIONS  OFFICER",
                            about:
                            """ A self-declared introvert, he has spent most of his teenage life struggling to decide whether he should sleep 16 hours a day or give up on sleep for the next week (the choice often being the former only to be disrupted by a flurry of calls). Our Public Relations Officer has a reputation for excelling at a variety of things, from mathematics all the way to receiving mbappe without fail in PES. What often goes unnoticed about this somber individual, are his talents in navigation and babysitting (in case you ever get lost you know who to call). Having a particular knack for all things business and politics, one can find him in business events throughout the city, though meeting him there is probably not the best idea.
PS: If you can’t find him, he’s probably chewing gum in front of “some people”.
""",
                            link: "teamPhoto/GOURAB_SAHA.png"),
                      ],
                    ),
                    SizedBox(height: height * .10221),
                    SizedBox(height: height * 0),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "DEPARTMENT  HEADS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.06 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 0.035 * MediaQuery.of(context).size.height,
                      thickness: 2,
                    ),
                    SizedBox(height: height * .00),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: height * .0),
                        const Department(
                            dep: "SECURITY",
                            name1: "Arpit  Jain",
                            name2: "Vinayak  Puri"),
                        const Department(
                            dep: "TRANSPORT",
                            name1: "Rajvir Singh Sachar",
                            name2: "Harshit  Singhania"),
                        const Department(
                            dep: "HOSPITALITY",
                            name1: "Md. Zayed Khan",
                            name2: "Mayank  Malhotra"),
                        const Department(
                            dep: "DEVELOPMENT",
                            name1: "Shaurya Beriwala",
                            name2: ""),
                        const Department(
                            dep: "SCHOOL-IN-CHARGE",
                            name1: "Rishabh Mukherjee",
                            name2: "Varenya Kanoria"),
                        const Department(
                            dep: "LOGISTICS",
                            name1: "Ayush Narnolia",
                            name2: "Ansh Binani"),
                      ],
                    ),
                    SizedBox(height: height * .03),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "TECH TEAM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.06 * width,
                          fontFamily: 'Xavier2',
                        ),
                      ),
                    ]),
                    Divider(
                      color: Colors.white,
                      indent: 0,
                      endIndent: 0,
                      height: 0.035 * MediaQuery.of(context).size.height,
                      thickness: 2,
                    ),
                    SizedBox(
                      height: 0.01221 * MediaQuery.of(context).size.height,
                    ),
                    Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              """
Hitansh Agarwal

Vedant Kejariwal

Shaurya Beriwala

Akul Arora

Ashmeet John Lakra

Lakshya Singhi

Pranshu Nemani

Rishit Seksaria

Sarthak Poddar

Shreevrind Kajaria

Trijal Srimal

Vyom Agarwal

Aritra Das
                                """,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 0.03125 *
                                      MediaQuery.of(context).size.width,
                                  fontFamily: 'Xavier3',
                                  letterSpacing: 0.00175 * width),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            BottomAppBar(
              color: const Color.fromARGB(255, 3, 12, 34),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    },
                    color: Colors.white,
                    icon: const Icon(Icons.home),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const EventsSporting()));
                    },
                    color: Colors.white,
                    icon: const Icon(Icons.videogame_asset),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Schedule(day: 1)));
                    },
                    color: Colors.white,
                    icon: const Icon(Icons.calendar_month),
                  ),
                  IconButton(
                    onPressed: (){},
                    color: Colors.white,
                    icon: const Icon(Icons.people),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Department extends StatefulWidget {
  final String dep;
  final String name1;
  final String name2;
  const Department(
      {Key? key, required this.dep, required this.name1, required this.name2})
      : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<Department> createState() =>
      _DepartmentState(dep: dep, name1: name1, name2: name2);
}

class _DepartmentState extends State<Department> {
  String dep;
  String name1;
  String name2;
  _DepartmentState(
      {required this.dep, required this.name1, required this.name2});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Text(
            dep,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 0.041 * MediaQuery.of(context).size.width,
              fontFamily: "Xavier1",
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name1,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 0.03125 * MediaQuery.of(context).size.width,
                fontFamily: "Xavier3",
                letterSpacing: 0.00175 * width),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            name2,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 0.03125 * MediaQuery.of(context).size.width,
                fontFamily: "Xavier3",
                letterSpacing: 0.00175 * width),
          ),
        ],
      ),
    );
  }
}