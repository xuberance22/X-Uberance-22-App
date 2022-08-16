import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xuberance_21/ui/eventRules.dart';
import 'package:xuberance_21/model/event.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:xuberance_21/model/event.dart';
import 'package:xuberance_21/ui/eventRules.dart';
import 'package:xuberance_21/ui/participants_form.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

final List<Event> eventfield = [
  /**JUNIOR EVENTS*/
  /**Four To Five*/
  Event(
    name: "X-ENUNCIATE",
    category: "live",
    numberOfParticipants: Range(start: 1, includingEditor: false),
    grade: Grade.fourToFive,
    // Will be there at the top of each event's page in the brochure.
    phrase:
        "You can speak well if your tongue can deliver the message of your heart.",
    // Do the dates either way.
    date: ("9 Oct"),
    time: ("2pm - 4pm"),
    rules:
        """1. Each participant will get a maximum time of 3 minutes to recite their chosen poem.
\n2. The participants must keep in mind that the poem that they have chosen is not offensive in any manner.
\n3. The participants are required to submit the name of their poem and poet ten days prior to the event, in the designated WhatsApp group to avoid any overlapping.
\n4. Incase two participants select the same poem, the participant who notified the event heads of their poem later will be asked to change the poem.
\n5. The participants must keep their videos on at all times. On facing network issues during their recitation, the participants will be given one more chance after all the other participants have finished reciting their pieces.  
              """,
    description:
        """1. For live events, all participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n2. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n3. For entry-based or recorded events, all participants are required to record video performances or submit images, as per the requirements of the concerned event. The deadline for submission is Wednesday, 6th of October, 2021 by 3 p.m. 
\n4. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n5. The students are allowed external help for the editing, compiling and uploading their respective submissions.
""",
  ),
  Event(
    name: "X-ILLUSTRATE",
    category: "entry-based",
    numberOfParticipants: Range(start: 1, includingEditor: false),
    grade: Grade.fourToFive,
    phrase:
        "Drawing at its best is not what your eyes see but what our mind understands.",
    date: ("9 Oct"),
    time: ("2pm - 4pm"),
    rules:
        """1. The topic on which the artwork must be based shall be given to the participants on Saturday, 9th October, 2021 at 2 p.m. via the WhatsApp group made for X-Illustrate.
\n2. The participants must use an A4 sheet for their drawings.
\n3. All types of colours and paints are permitted.
\n4. Within 2 hours of the announcement of the topic, the participants are required to upload their entries.
\n5. The artwork has to be sent as a PDF or a JPEG file. 
\n6. To ensure that the participants do not resort to any unfair means, they are requested to upload a time-lapse video of themselves while they make their painting.
\n7. The participants shall be judged on the basis of their creativity and their presentation.  
              """,
    description:
        """1. For live events, all participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n2. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n3. For entry-based or recorded events, all participants are required to record video performances or submit images, as per the requirements of the concerned event. The deadline for submission is Wednesday, 6th of October, 2021 by 3 p.m. 
\n4. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n5. The students are allowed external help for the editing, compiling and uploading their respective submissions.
""",
  ),
  Event(
    name: "X-GLAMOUR",
    category: " ",
    numberOfParticipants: Range(start: 6, end: 10, includingEditor: false),
    grade: Grade.fourToFive,
    phrase: "Life isn’t perfect but your outfit can be.",
    date: (" "),
    time: ("Recorded"),
    rules:
        """1. The theme for the event will be ‘Traditional Indian ethnic wear’.
\n2. The participants will have to record their walks individually and then blend in all the clips into a single video.
\n3. MP4 is the only video format that will be accepted.
\n4. External help for merging all the clips and editing the video is allowed.
\n5. Each school must upload its performance video by Wednesday, 6th of October, 2021 before 3 p.m.
\n6. Decency must be maintained throughout the performance, failing which will lead to disqualification by the judges.
\n7. The performances will be judged on the basis of :
	\t(i) Portrayal of the theme
	\t(ii) Attire and accessories
	\t(iii) Presentation
\n8. Failure to remain within the given time frame will lead to negative marking.
              """,
    description:
        """1. For live events, all participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n2. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n3. For entry-based or recorded events, all participants are required to record video performances or submit images, as per the requirements of the concerned event. The deadline for submission is Wednesday, 6th of October, 2021 by 3 p.m. 
\n4. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n5. The students are allowed external help for the editing, compiling and uploading their respective submissions.
""",
  ), //2
  /**Six To Eight*/
  Event(
    name: "X-TRIVIA",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),
    grade: Grade.sixToEight,
    phrase: "It's okay to not know but it's never okay to not try.",
    date: ("8 Oct"),
    time: ("9am - 1pm"),
    rules: """1.The event will be divided into two halves : 
\t(i) Prelims - The preliminary round will have 9 questions, and answer of each of the subsequent questions will begin with the letters of 'XUBERANCE. This means that the first question's answer will start with 'X', the first letter of 'XUBERANCE', the second question's answer will start with 'U' and so on. Participants will be given writing time of 15 minutes, during which they will be shown the questions and they have to write their answers during this time period on a ruled sheet of paper. Once the writing time is over, participants will get a maximum of 5 minutes to send a clear picture of their answer sheet to a WhatsApp number, allocated to them beforehand.
\t(ii) Final - Top 6 teams to get the most points in Prelims will participate in this round. In case of a tie, the team which finishes the quiz in the shorter time will advance to this final round. The winner of this round shall be declared the winner of the entire event. The Quizmaster’s decision shall be final and binding in this round.
\n2.The videos of all participants must be on for the entire duration of the quiz with their hands and upper body clearly visible so as to prevent the use of any unfair means, failing which would lead to disqualification.
\n3.Other details shall be explained by the Quizmaster prior to the commencement of the event.
              """,
    description:
        """1. For live events, all participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n2. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n3. For entry-based or recorded events, all participants are required to record video performances or submit images, as per the requirements of the concerned event. The deadline for submission is Wednesday, 6th of October, 2021 by 3 p.m. 
\n4. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n5. The students are allowed external help for the editing, compiling and uploading their respective submissions.
""",
  ),
  Event(
    name: "X-HOP",
    category: " ",
    numberOfParticipants: Range(start: 4, end: 8, includingEditor: false),
    grade: Grade.sixToEight,
    phrase: "When in doubt, dance it out.",
    date: (" "),
    time: ("recorded"),
    rules:
        """1. The participants will have to record their choreographies individually and then compile all the clips into a single video.
\n2. The video need not compulsorily be edited by a student of class 6,7 or 8. External help for merging all the clips and editing the video is allowed.
\n3. Each school must upload its performance video by Wednesday, 6th of October, 2021 before 3 p.m.
\n4. MP4 is the only video format that will be accepted.
\n5. Participants can use Hindi or Bollywood songs in their dance choreography.
\n6. Songs containing abusive and offensive language must not be used.
\n7. Judges reserve the right to disqualify any school on the grounds of vulgarity and obscenity. 
\n8. The performances will be judged on the basis of :
	\t(i) Choreography 
	\t(ii) Expressions
	\t(iii) Rhythm
\n9. Failure to remain within the given time frame will lead to negative marking.
              """,
    description:
        """1. For live events, all participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n2. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n3. For entry-based or recorded events, all participants are required to record video performances or submit images, as per the requirements of the concerned event. The deadline for submission is Wednesday, 6th of October, 2021 by 3 p.m. 
\n4. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n5. The students are allowed external help for the editing, compiling and uploading their respective submissions.
""",
  ),
  Event(
    name: "X-TUNES",
    category: " ",
    numberOfParticipants: Range(start: 4, end: 8, includingEditor: false),
    grade: Grade.sixToEight,
    phrase:
        "Music, once admitted to the soul, becomes a sort of spirit and never dies.",
    date: (" "),
    time: ("recorded"),
    rules:
        """1. Each school must upload its performance video by Wednesday, 6th of October, 2021 before 3 p.m.
\n2. MP4 is the only video format that will be accepted.
\n3. The performers must record their portions individually and then, these clips need to be properly merged. 
\n4. External help for compiling all the clips and editing the video is allowed. 
\n5. A maximum of 3 tracks can be performed and the use of instruments is permitted. However, the use of auto-tune is strictly prohibited.
\n6. The songs chosen must not have any objectionable lyrics. It must not be derogatory towards any particular group of people. 
\n7. The participants will be judged on the following criteria :
	\t(i) Vocal quality 
	\t(ii) Synchronization
	\t(iii) Clarity
\n8. Failure to remain within the given time frame will lead to negative marking.
              """,
    description:
        """1. For live events, all participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n2. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n3. For entry-based or recorded events, all participants are required to record video performances or submit images, as per the requirements of the concerned event. The deadline for submission is Wednesday, 6th of October, 2021 by 3 p.m. 
\n4. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n5. The students are allowed external help for the editing, compiling and uploading their respective submissions.
""",
  ), //5
  /**LIVE EVENTS*/
  Event(
    name: "X-CALIBRE",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),
    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Don't raise your voice, raise your argument!",
    // Do the dates either way.
    date: "9 Oct",
    time: "2pm - 6pm",
    rules: """
1. We shall follow the convention of the Oxford style of Debating, where one will be arguing for the motion and the other against the motion. 
\n2. The motion will be sent 24 hours prior to the debate.
\n3. The participants will be given 4 minutes to present their arguments with a warning bell at the end of 3 minutes and a final bell at the end of 4 minutes.
\n4. There will be 2 rebuttal questions allowed per speech, depending upon the discretion of the moderator.
\n5. Exceeding the 4-minute time limit will lead to negative marking and usage of unparliamentary language will lead to immediate disqualification.
      """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-TRIAL",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "If you can't convince them, confuse them.",
    // Do the dates either way.
    date: "9 Oct",
    time: "2pm - 6pm",
    rules: """1. X-Trial will include the following 3 rounds :
  \t(i) Prelims - Each participating school will argue the same case. The top 4 teams will advance to the next round. The draws will be decided by lottery and announced 2 days before the Prelims begin.  
  \t(ii) Semi-finals - The 4 qualified teams will argue against each other and the 2 winning sides will move on to the finale. The draws will be as follows :
               1st-placed team of Prelims v/s 4th-placed team of Prelims 
               2nd-placed team of Prelims v/s 3rd-placed team of Prelims
  \t(iii) Finals - The winners of each of the two semi-finals will argue against each other to decide the winner and runner-up of X-Trial. The remaining two semi-finalists will compete against each other for the 3rd place.
  \n2. The participants will be given 4 minutes to present their arguments, followed by 1 minute of questioning by the opposing counsel. Both participants are not mandated to speak. Only one question will be allowed with no counter-questions.
  \n3. The case for all 3 rounds will be given 2 days prior to the event. 
  \n4. The participants are to use only Indian Statutes and Judgements passed in the Supreme Court or the High Courts of India. The links of every precedent used have to be mailed to an email address given beforehand. This should be done at least 20 minutes before the start of one’s case. 
      """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-QUIZITE",
    category: "live",
    numberOfParticipants: Range(start: 3, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Where a smart answer won't get you fired(if you know, you know)",
    // Do the dates either way.
    date: ("Across 8 and 9 oct"),
    time: ("2 rounds"),
    rules: """
  \n1. The event will consist of 2 stages :
  \t(i) Prelims - All participating schools will take part in this round together. Only the top 8 schools will move on to the final.
  \t(i) Finals - The winner of this round shall be declared the winner of the entire event.
  \n2. The scoring system shall be explained by the Quizmistress prior to the commencement of the event.
  \n3. The decision of the Quizmistress shall be final and binding.
  \n4. The videos of all participants must be on for the entire duration of the quiz with their hands and upper body clearly visible so as to prevent the use of any unfair means, failing which would lead to disqualification.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-BID",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Who is your favourite cricketer and why is it Dhoni?",
    // Do the dates either way.
    date: "8 Oct",
    time: "1pm - 6pm",
    rules: """
  1. Only the first 12 schools to register for X-Bid can participate in this event.
  \n2. The participants have to formulate the best possible team of 11 cricketers, taking into account various aspects such as budget constraints, team balance and rankings of players.
  \n3. During the auction, only 2 schools may enter into a bidding war at any given point. Only when one of the two schools back out can another school bid for the player.
  \n4. The participants are required to pitch their teams to prospective investors cum judges after the auction and answer their questions.
  \n5. The pitching time allotted to each school is 3:30 minutes, followed by 2:30 minutes of questioning. 
  \n6. In the auction, bids would increase by multiples of 0.5 crore till 10 crores. After 10 crores, the bids will increase by multiples of 1 crore. 
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-GAANA",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "X-Uberance, naam toh suna hoga.",
    // Do the dates either way.
    date: "8 Oct",
    time: "2pm - 5pm",
    rules: """1.Bollywood songs will form the basis of this event.
  \n2. The event will consist of 4 stages :
  \t(i) Dialogue - A dialogue from a particular movie will be displayed. The teams need to guess the movie and sing a song from that movie. 
  \t(ii) Prop- All the school teams have to sing a song related to a prop shown to them.
  \t(iii) Visual - A short clip or an image of a song of a movie will be shown and the participants have to sing that song. 
  \t(iv) Translation - A song will be translated into English. The participants have to decipher it and sing the original Hindi song.
  \n3. The scoring system and other details shall be explained by the event heads prior to the commencement of the event.
  \n4. Singing songs containing objectionable lyrics will lead to immediate disqualification.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-BITORKO",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase:
        "Debate and divergence of views can only enrich our history and culture.",
    // Do the dates either way.
    date: "8 Oct",
    time: "2pm - 6pm",
    rules:
        """ 1. We shall follow the convention of the Oxford style of Debating, where one participant will be arguing for the motion and the other against the motion.
  \n2. The motion will be sent 24 hours prior to the debate. 
  \n3. The participants will have 3 minutes to put forth their arguments with a warning bell  at the end of 2 minutes and a final bell at the end of 3 minutes. 
  \n4. There will be 2 rebuttal questions allowed per speech, depending upon the discretion of the moderator. 
  \n5. Exceeding the 4-minute time limit will lead to negative marking and usage of unparliamentary language will lead to immediate disqualification.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-MATE",
    category: "live",
    numberOfParticipants: Range(start: 1, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase:
        "Fun fact: The number of unique chess games possible is greater than the number of electrons in the universe!",
    // Do the dates either way.
    date: "9 Oct",
    time: "9am - 11am",
    rules: """
  1. Only the first 16 schools to register for X-Mate can participate in this event.
  \n2. The tournament will be conducted on lichess.org . 
  \n3. The tournament will be conducted in the globally predominant Swiss - League Format.
  \n4. The participants will be required to have an existing Lichess ID to participate in the tournament. The participants are to share their username details in the WhatsApp group created for the event.
  \n5. Each game will include a time limit of 5 minutes per participant with no increment. {5+0 Format} 
  \n6. The participants have to join a Zoom meeting and switch on their videos during their games.
  \n7. A document outlining the layout of the tournament and other details pertaining to X-Mate shall be shared with the participants before the event begins.
  \n8. Objections regarding any speculative match have to be reported within one hour of the completion of the tournament.
  \n9. Each game will be monitored meticulously by professionals. If any participant is found taking the help of any external engines, it will lead to immediate disqualification. 
  \n10. If your account is banned by Lichess itself while the tournament is being held, you are also concomitantly banned from the tournament.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  Event(
    name: "X-VALO",
    category: "live",
    numberOfParticipants: Range(start: 5, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Don't worry, this isn't getting banned!",
    // Do the dates either way.
    date: ("Across 8 and 9 Oct"),
    time: ("2 Rounds"),
    rules: """
  1. Only the first 8 schools to register for X-Valo can participate in this event.
  \n2. Each player needs to be of the age of 15 or above.
  \n3. All players are allowed to have only one Valorant account. All information registered on the accounts need to be up-to-date and have the correct information. 
  \n4. This event shall be hosted on Discord.
  \n5. Other specifics concerning the game will be sent to the participants on the WhatsApp group created for the event.
  \n6. At any point during the match, admins reserve the right to pause the match and ask for a video feed of any player. Not complying with it can result in disqualification and if any suspicious activity is detected, necessary measures will be taken.
  \n7. Use of foul language is strictly prohibited.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. All participants are required to be in full school uniform during the Zoom meetings. 
\n2. The participants are requested to enter the meeting 10 minutes prior to the scheduled time and keep their videos on for the entire duration of the event. 
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                     SchoolInitials_ParticipantName_EventName
                     Example - SXCS_AryanSharma_X-Negotium
\n4. All participants are required to have their school logo as their zoom profile picture.  
\n5. Participants are advised to have a strong internet connection to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n6. The participants will be muted or unmuted as per the requirements of the event in order to ensure a hassle-free process.
\n7. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n8. The participants shall be immediately disqualified if they are found showing any kind of misconduct to anyone whatsoever.
""",
  ),
  /**BROADCAST EVENTS*/
  Event(
    name: "X-TRAVAGANCE",
    category: "recorded",
    numberOfParticipants: Range(start: 4, end: 8, includingEditor: true),
    grade: Grade.nineToTwelve,
    phrase: "Dance before you walk.",
    date: ("9 Oct at 5pm"),
    time: ("4-5 minutes"),
    rules:
        """1. All sorts of western dance forms, including Indo-western fusion dance style shall be encouraged.
\n2. Participants can use Hindi or Bollywood songs for their performance.
\n3. Use of filters will not be permitted.
\n4. Explicit songs containing abusive and offensive language must not be used. 
\n5. The performances will be judged on the basis of :
\t(i) Choreography 
\t(ii) Ingenuity
\t(iii) Synchronization
\t(iv) Expressions 
\t(v) Creativity
\n6.Judges reserve the right to disqualify any school on the grounds of vulgarity and obscenity.
""",
    description:
        """1. Participants are required to record video performances or submit images, as per the requirements of the concerned event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. The deadline for submission is Tuesday, 5th of October, 2021 by 3 p.m. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted. The size of the image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n5. These events will be showcased to external viewers through YouTube or X-Uberance’s social media handles. The events shall go live on YouTube as per the time mentioned in the schedule. 
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
\n7. Failure to remain within the given time frame for the respective events will lead to negative marking. 
\n8. Keeping in mind the current situation and the social distancing regulations, all individual participants should record their parts individually and then edit all the clippings into a single performance video, which is to be uploaded.
""",
  ),
  Event(
    name: "X-VOGUE",
    category: "recorded",
    numberOfParticipants: Range(start: 8, end: 10, includingEditor: true),
    grade: Grade.nineToTwelve,
    phrase: "Don’t stress about the dress, you just need to impress!",
    date: ("9 Oct at 1pm"),
    time: ("5-6 minutes"),
    rules:
        """1. Each team has to replicate the fashion sense and personality of music artists and singers from all around the globe. 
\n2. A maximum of two singers from the same country can be represented by any team in their performance.    
\n3. The walks can be accompanied by non-explicit background music and text description, relating that walk to the theme.
\n4. The performances will be judged on the basis of :
\t(i) Portrayal of the theme
\t(ii) Runway walk
\t(iii) Attire and accessories
\t(iv) Presentation
\n5. Decency must be maintained throughout the performance, failing which will lead to disqualification by the judges.
""",
    description:
        """1. Participants are required to record video performances or submit images, as per the requirements of the concerned event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. The deadline for submission is Tuesday, 5th of October, 2021 by 3 p.m. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted. The size of the image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n5. These events will be showcased to external viewers through YouTube or X-Uberance’s social media handles. The events shall go live on YouTube as per the time mentioned in the schedule. 
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
\n7. Failure to remain within the given time frame for the respective events will lead to negative marking. 
\n8. Keeping in mind the current situation and the social distancing regulations, all individual participants should record their parts individually and then edit all the clippings into a single performance video, which is to be uploaded.
""",
  ),
  Event(
    name: "X-ACOUSTIC",
    category: "recorded",
    numberOfParticipants: Range(start: 3, end: 6, includingEditor: true),
    grade: Grade.nineToTwelve,
    phrase:
        "Professional bathroom singers finally have a chance to showcase their talent!",
    date: ("9 Oct at 9am"),
    time: ("4-6 Minutes"),
    rules:
        """1. The participants will be required to pick songs from western music genres and submit a video of their rendition of those particular songs.
\n2. A maximum of 3 tracks can be performed and the use of instruments is permitted. However, the use of backing tracks and auto-tune is strictly prohibited.
\n3. The participants will be judged on the following criteria :
\t(i) Vocal quality
\t(ii) Synchronization
\t(iii) Clarity
\t(iv) Musical expression
\t(v) Choice of songs
\n4. The songs chosen must not have any objectionable lyrics. It must not be derogatory towards any particular group of people.
""",
    description:
        """1. Participants are required to record video performances or submit images, as per the requirements of the concerned event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. The deadline for submission is Tuesday, 5th of October, 2021 by 3 p.m. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted. The size of the image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n5. These events will be showcased to external viewers through YouTube or X-Uberance’s social media handles. The events shall go live on YouTube as per the time mentioned in the schedule. 
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
\n7. Failure to remain within the given time frame for the respective events will lead to negative marking. 
\n8. Keeping in mind the current situation and the social distancing regulations, all individual participants should record their parts individually and then edit all the clippings into a single performance video, which is to be uploaded.
""",
  ),
  Event(
    name: "X-RAGA",
    category: "recorded",
    numberOfParticipants: Range(start: 3, end: 6, includingEditor: true),
    grade: Grade.nineToTwelve,
    phrase: "Where words fail, music speaks.",
    date: ("8 Oct at 5pm"),
    time: ("4-6 Minutes"),
    rules:
        """1. Participants can choose any Hindustani classical or semi-classical composition and must include at least one Rabindra Sangeet. 
\n2. Use of traditional Indian instruments is encouraged. The use of electronic or western musical instruments, other than synthesizers, is prohibited.
\n3. The participants will be judged on the following criteria : 
\t(i) Vocals
\t(ii) Harmony of instruments 
\t(iii) Synchronization 
\t(iv) Clarity 
\t(v) Rhythmic interpretation 
\n4. Backing tracks are allowed without electronic instruments. However, use of auto-tune is strictly prohibited.
""",
    description:
        """1. Participants are required to record video performances or submit images, as per the requirements of the concerned event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. The deadline for submission is Tuesday, 5th of October, 2021 by 3 p.m. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted. The size of the image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n5. These events will be showcased to external viewers through YouTube or X-Uberance’s social media handles. The events shall go live on YouTube as per the time mentioned in the schedule. 
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
\n7. Failure to remain within the given time frame for the respective events will lead to negative marking. 
\n8. Keeping in mind the current situation and the social distancing regulations, all individual participants should record their parts individually and then edit all the clippings into a single performance video, which is to be uploaded.
""",
  ),
  Event(
    name: "X-ACT",
    category: "recorded",
    numberOfParticipants: Range(start: 4, end: 7, includingEditor: true),
    grade: Grade.nineToTwelve,
    phrase:
        "Don’t just imitate Leonardo DiCaprio behind locked doors! We got you covered!",
    date: ("8 Oct at 1pm"),
    time: ("2-3 Minutes"),
    rules:
        """1. Each team will be given a different brand or product, whose advertisement the participants have to recreate and revitalize as a parody with humour and comical enactment.   
\n2. The teams will be judged on the following criteria :
\t(i) Creativity
\t(ii) Content
\t(iii) Writing
\t(iv) Acting
\n3. Judges reserve the right to disqualify any school on the grounds of vulgarity and obscenity. Use of inappropriate language is strictly prohibited.
""",
    description:
        """1. Participants are required to record video performances or submit images, as per the requirements of the concerned event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. The deadline for submission is Tuesday, 5th of October, 2021 by 3 p.m. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted. The size of the image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n5. These events will be showcased to external viewers through YouTube or X-Uberance’s social media handles. The events shall go live on YouTube as per the time mentioned in the schedule. 
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
\n7. Failure to remain within the given time frame for the respective events will lead to negative marking. 
\n8. Keeping in mind the current situation and the social distancing regulations, all individual participants should record their parts individually and then edit all the clippings into a single performance video, which is to be uploaded.
""",
  ), //17
  /**ENTRY-BASED EVENTS*/
  Event(
    name: "X-BET",
    category: "Submission-\nbased",
    numberOfParticipants: Range(start: 2, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Let's test how much faith you have in your own participants!",
    // Do the dates either way.
    date: "8 Oct",
    time: "Until 11AM",
    rules: """
  1. This event is exclusively for the school representatives.
  \n2. All schools shall receive 1000 X-Coins during the representatives’ meet, which they can invest in the recorded events or on their performance in different events by their own will. 
  \n3. The schools have to build their portfolio, on the basis of which they shall get their returns.
  \n4. The procedure of investing and other details shall be disclosed later.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. Participants are required to record video performances or submit images, as per the particular event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. No submissions will be accepted after the submission window for the respective event is over. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted.
\n5. The size of each uploaded image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
""",
  ),
  Event(
    name: "X-60",
    category: "Submission-\nbased",
    numberOfParticipants: Range(start: 1, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Race against the clock, a minute is all you've got.",
    // Do the dates either way.
    date: "8 Oct",
    time: "Throughout the Day",
    rules: """
  1. Participants have to record a video of themselves portraying an exceptional and unique talent.
  \n2. The performance video must be uploaded by Wednesday, 6th of October, 2021 before 3 p.m.
  \n3. Participants are to send their videos in a square frame with a 1:1 aspect ratio, so as to enable the event management team to post them on Instagram without any loss of content.
  \n4. The videos will be posted on the official Instagram page of X-Uberance ’21 on Friday, 8th of October, 2021 as per a time table, which will be mentioned later.
  \n5. If the length of the submitted video is greater than 1 minute, only the first minute of the video will be considered.
  \n6. Details regarding the judging procedure of this event shall be disclosed later.    
  \n7. Vulgarity of any kind will lead to immediate disqualification. 
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. Participants are required to record video performances or submit images, as per the particular event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. No submissions will be accepted after the submission window for the respective event is over. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted.
\n5. The size of each uploaded image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
""",
  ),
  Event(
    name: "X-SPLASH",
    category: "Submission-\nbased",
    numberOfParticipants: Range(start: 2, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "The Earth without art is just \"Eh\"",
    // Do the dates either way.
    date: "9 Oct",
    time: "1pm - 5pm",
    rules: """
  1. There will be two simultaneous rounds in this event. An open-ended topic will be given on Saturday, 9th October, 2021 at 1 p.m. The participants need to submit their entries by 5 p.m. 
  \n2. One participant is required to make analog art based on their interpretation of that particular topic, while the other participant is required to make a digital artwork illustrating the contrasting perspective of the topic.
  \n3. For analog illustration, participants can pick any form of art, ranging from sketching, pastel shading, oil painting or even doodling.
  \n4. The participants are required to use a minimum of A4 size paper for their painting. 
  \n5. Along with their artwork, the participants also have to upload a time-lapse video of themselves while they make their illustrations.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. Participants are required to record video performances or submit images, as per the particular event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. No submissions will be accepted after the submission window for the respective event is over. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted.
\n5. The size of each uploaded image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
""",
  ),
  Event(
    name: "X-SNAP",
    category: "Submission-\nbased",
    numberOfParticipants: Range(start: 1, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Photography is an austere and blazing poetry of the real.",
    // Do the dates either way.
    date: "8 Oct",
    time: "12pm - 6pm",
    rules: """
  1. The topic will be given on Friday, 8th  October, 2021 at 12 p.m. The participant needs to submit his entry by 6 p.m.
  \n2. The photograph is to be clicked indoors or inside the premises of the participant’s residential complex.
  \n3. The image should not be edited.
  \n4. Along with the entry, it is also required to upload a picture of the participant near the object or scene of the submitted photograph to prove the authenticity of the participant’s entry. 
  \n5. Any form of inappropriate content will not be accepted and will lead to immediate disqualification.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. Participants are required to record video performances or submit images, as per the particular event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. No submissions will be accepted after the submission window for the respective event is over. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted.
\n5. The size of each uploaded image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
""",
  ),
  Event(
    name: "X-MEME",
    category: "Submission-\nbased",
    numberOfParticipants: Range(start: 1, includingEditor: false),

    grade: Grade.nineToTwelve,
    // Will be there at the top of each event's page in the brochure.
    phrase: "Let's pretend it's something catchy and funny",
    // Do the dates either way.
    date: "3 Oct",
    time: "Throughout the Day",
    rules: """
  1. Each participant must upload one original meme by Friday, 1st  October, 2021 before 3 p.m. 
  \n2. Participants are to send their submissions in a square frame having 1:1 aspect ratio.
  \n3. The memes will be posted on the official Instagram page of X-Uberance ’21 on Sunday, 3rd of October, 2021 as per a time table, which will be mentioned later. 
  \n4. The meme getting the most reach in the form of shares, likes and comments will be adjudged the winner.
  \n5. The memes should not be offensive or discriminatory against any caste, gender, race, etc. and neither should it slander any institution or school. If this is violated, the event heads hold the right to deny that particular entry.
  \n6. Memes need to be original and plagiarism of any kind will lead to immediate disqualification.
    """,
    // You'll find this in the schedule in the brochure.
    description:
        """1. Participants are required to record video performances or submit images, as per the particular event.
\n2. All the submissions have to be made to the X-Uberance Google Drive, the link to which will be shared beforehand with the student representatives of the schools via the representatives’ WhatsApp group.
\n3. No submissions will be accepted after the submission window for the respective event is over. 
\n4. The uploaded video’s size should not exceed 1 gigabyte and MP4 is the only video format that will be accepted.
\n5. The size of each uploaded image should not exceed 30 megabytes and must be uploaded in the JPEG format.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants.
""",
  ), //22
  /**GROUPED EVENTS*/
  Event(
    name: "X-NEGOTIUM",
    category: "Live",
    numberOfParticipants: Range(start: 3, includingEditor: false),
    grade: Grade.nineToTwelve,
    phrase:
        "Negotiate with the same conviction Indians bargain with the local vendors.",
    date: ("Across 8 and 9 Oct"),
    time: ("5 rounds"),
    rules: """1. The event will consist of 5 rounds :
\t(i) Personal Interview - This is a live round wherein the participants will have to mail their CVs a day prior to the start of the event to a stipulated mail address. The participants will be interviewed on the basis of their resumes.
\t(ii) Surprise Round - This is a live round, the details of which will be revealed then itself.
\t(iii) Group Discussion - This is a live round wherein the qualifying participants will engage in a constructive group discussion, which will resemble a corporate boardroom.
\t(iv) Surprise Round - This is a live round, the details of which will be revealed then itself.
\t(v) Corporate Crisis - In this round, each qualifying participant shall be presented with a unique case. The participants are required to come up with viable methods to address the problem as well as suggest solutions to tackle it. They will also be required to pitch it to a panel of judges.
\n2. Prior to the commencement of the event, the participants shall be furnished with detailed documents regarding each round.
              """,
    description:
        """1. The grouped events consist of multiple rounds, which are eliminative in nature. Participants need to pass one round for their team to continue to the next round.
\n2. All participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time.  
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                   SchoolInitials_ParticipantName_EventName
                   Example - SXCS_AryanSharma_X-Negotium
\n4. Participants are advised to have a strong internet connection with good quality webcams and microphones to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n5. Participants are required to keep their videos on at all times.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n7. Utmost decorum should be observed during the Zoom meeting as well as in the WhatsApp group. If the event heads find that a particular participant is disrespectful towards the judges, moderator or a fellow participant, they have full authority to revoke the participation of that student in that particular event. Moreover, points shall be deducted from the school's total tally.
""",
  ),
  Event(
    name: "X-PERIMENT",
    category: "live",
    numberOfParticipants: Range(start: 4, includingEditor: false),
    grade: Grade.nineToTwelve,
    phrase: "Dad joke time: Never trust atoms…..they make up everything.",
    date: ("Across 8 and 9 Oct"),
    time: ("4 rounds"),
    rules: """1. The event will comprise 4 rounds :
\t(i) Web Development - Participants will be required to make a website within 2 hours on WordPress or Wix, based on a theme which will be given just before the round. The ideas and design should be original and any form of plagiarism will lead to immediate disqualification. The top 12 schools will qualify for the second round.
\t(ii) Coding - Participants will have to go to a given website, where they will receive a total of six programs to solve. The programming language to be used will be Python, C++ or Java. Objective of the round is to complete the maximum number of programs correctly in the least amount of time. Use of any unfair means will lead to immediate disqualification. The top 8 schools in the Coding round will move on to the next rounds.
\t(iii) Scientific Innovator - A topic will be given to the participants at the end of Day 1. They will be required to come up with an efficient and insightful model for an idea pertaining to the given topic. Using a PowerPoint presentation, the participants will have to explain their models to the judges and provide a blueprint detailing its functioning, working principle, advantages and feasibility.  
\t(iv) Panel Discussion - Participants will be given a topic of discussion 1 hour prior to the round. Each participant will be permitted to speak for a maximum of 3 minutes and after each speech, any one question will be entertained from the rest of the panel, depending upon the moderator’s discretion. 
\n2. Each of the 4 rounds will require one participant from  each school. The school is at liberty to register  four different students for each of the 4 rounds or register the same student for 2 or more rounds.
              """,
    description:
        """1. The grouped events consist of multiple rounds, which are eliminative in nature. Participants need to pass one round for their team to continue to the next round.
\n2. All participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time.  
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                   SchoolInitials_ParticipantName_EventName
                   Example - SXCS_AryanSharma_X-Negotium
\n4. Participants are advised to have a strong internet connection with good quality webcams and microphones to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n5. Participants are required to keep their videos on at all times.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n7. Utmost decorum should be observed during the Zoom meeting as well as in the WhatsApp group. If the event heads find that a particular participant is disrespectful towards the judges, moderator or a fellow participant, they have full authority to revoke the participation of that student in that particular event. Moreover, points shall be deducted from the school's total tally.
""",
  ),
  Event(
    name: "X-EFFUSION",
    category: "live",
    numberOfParticipants: Range(start: 3, includingEditor: false),
    grade: Grade.nineToTwelve,
    phrase:
        "English never knew that floccinaucinihilipilification would be such a hit.\nCourtesy: Shashi Tharoor",
    date: ("Across 8 and 9 Oct"),
    time: ("3 rounds"),
    rules: """1. The event will comprise three rounds :
\t(i) Improv - The participants will be given a set of clues at fixed time intervals. They would have to incorporate their clues in a 2-minute story, keeping in mind that the transition should be smooth. The top 12 teams will move on to the next round.
\t(ii) Brainathon - This round will encompass the participants solving a variety of puzzles like jumbled words, riddles and crosswords. The top 5 schools in this round will move on to the final round.
\t(iii) Creative Writing - The participants will be required to join a Zoom meeting where they shall be given a topic. They will be allowed a time window of 1.5 hours to write an essay while still being in the Zoom meeting. The essay has to be hand-written on sheets of paper and must be between 450 and 500 words.
\n2. Prior to the commencement of the event, the participants shall be furnished with detailed documents regarding each round.
\n3. Pertaining to Brainathon and Creative Writing rounds, the following is to be kept in mind :
\t(i) At the end of writing time, the participants will get a maximum of 10 minutes to scan their sheets and create a PDF document, which is to be named using the following convention :            SchoolAbbreviation_Participant’sFullName
\t(ii) The participants will be required to upload their PDF document to the X-Uberance Google Drive, the link to which will be provided beforehand.
\n4. The school is at liberty to register three different students for each of the 3 rounds or register the same student for 2 or more rounds.
              """,
    description:
        """1. The grouped events consist of multiple rounds, which are eliminative in nature. Participants need to pass one round for their team to continue to the next round.
\n2. All participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time.  
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                   SchoolInitials_ParticipantName_EventName
                   Example - SXCS_AryanSharma_X-Negotium
\n4. Participants are advised to have a strong internet connection with good quality webcams and microphones to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n5. Participants are required to keep their videos on at all times.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n7. Utmost decorum should be observed during the Zoom meeting as well as in the WhatsApp group. If the event heads find that a particular participant is disrespectful towards the judges, moderator or a fellow participant, they have full authority to revoke the participation of that student in that particular event. Moreover, points shall be deducted from the school's total tally.
""",
  ),
  Event(
    name: "X-INNOVATE",
    category: "live",
    numberOfParticipants: Range(start: 2, includingEditor: false),
    grade: Grade.nineToTwelve,
    phrase: "This is your chance to make a deal with Mr. Wonderful!",
    date: ("Across 8 and 9 Oct"),
    time: ("2 Rounds"),
    rules: """1. The event will comprise two rounds :
Start-up - For the first round, the participants will have to come up with an innovative product or service in a particular sector. Time allotted for pitching is 4 minutes, followed by 3 minutes of questioning by the judges.
Marketing - The second round shall test the participants’ calibre in marketing.
\n2. The allotment of the various sectors to the schools  for the Start-up round shall be done through an auction, details regarding which shall be conveyed to the participants before this auction round begins on Day 1. 
\n3. The participants are requested to keep in mind the viability and practicality of their product or service.
\n4. Prior to the commencement of the event, the participants shall be furnished with detailed documents regarding each round.
              """,
    description:
        """1. The grouped events consist of multiple rounds, which are eliminative in nature. Participants need to pass one round for their team to continue to the next round.
\n2. All participants are required to be in full school uniform during the Zoom meetings. The participants are requested to enter the meeting 10 minutes prior to the scheduled time.  
\n3. While entering the Zoom meetings, the participants have to rename themselves according to the naming convention stated below :
                   SchoolInitials_ParticipantName_EventName
                   Example - SXCS_AryanSharma_X-Negotium
\n4. Participants are advised to have a strong internet connection with good quality webcams and microphones to ensure a smooth flow of the proceedings. The host school shall not be responsible for any connection issues faced by the participants.
\n5. Participants are required to keep their videos on at all times.
\n6. WhatsApp groups will be formed for necessary events and will act as a direct medium of communication between the event heads and participants. The links to the Zoom meetings will be shared on the respective WhatsApp groups.
\n7. Utmost decorum should be observed during the Zoom meeting as well as in the WhatsApp group. If the event heads find that a particular participant is disrespectful towards the judges, moderator or a fellow participant, they have full authority to revoke the participation of that student in that particular event. Moreover, points shall be deducted from the school's total tally.
""",
  ), //26
];

class _EventsState extends State<Events> {
  final List eventNames45 = ["X-ENUNCIATE", "X-ILLUSTRATE", "X-GLAMOUR"];
  final List eventNames68 = ["X-TRIVIA", "X-HOP", "X-TUNES"];
  final List eventNamesGrouped = [
    "X-NEGOTIUM",
    "X-PERIMENT",
    "X-EFFUSION",
    "X-INNOVATE"
  ];
  final List eventNamesEntryBased = [
    "X-BET",
    "X-60",
    "X-SPLASH",
    "X-SNAP",
    "X-MEME"
  ];
  final List eventNamesBroadcast = [
    "X-TRAVAGANCE",
    "X-VOGUE",
    "X-RAGA",
    "X-ACOUSTIC",
    "X-ACT"
  ];
  final List eventNamesLive = [
    "X-TRIAL",
    "X-QUIZITE",
    "X-CALIBRE",
    "X-BID",
    "X-GAANA",
    "X-BITORKO",
    "X-MATE",
    "X-VALO"
  ];
  int _selectedIndex = 0, j = 6, k = 14;

  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      fontFamily: "heading",
      color: Colors.white);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Live',
      style: optionStyle,
    ),
    Text(
      'Broadcast',
      style: optionStyle,
    ),
    Text(
      'Entry-Based',
      style: optionStyle,
    ),
    Text(
      'Grouped',
      style: optionStyle,
    ),
  ];

  final PageController _pageController = PageController(initialPage: 2);

  Widget _background() {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/sponsors_background.png'),
        fit: BoxFit.cover,
      )),
    );
  }

  @override
  Widget _title() {
    return Hero(
      tag: "EVENTS",
      child: Container(
          padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Image.asset("images/EVENTS.png", height: 80, width: 300)),
    );
  }

  Widget _card(title, AssetImage logo) {
    return Hero(
      tag: "$title",
      child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade700,
                width: 0,
              ),
              image:
                  DecorationImage(image: AssetImage("images/card_logo.png"))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: Image(
                  image: logo,
                  fit: BoxFit.cover,
                ))
              ])),
    );
  }

  Widget _cardevent(Event _field, String title) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => EventRules(_field)));
      },
      child: Card(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 40),
        child: _card("$title", AssetImage("images/cards/cards/$title.jpg")),
      ),
    );
  }

  Widget _card_menu45() {
    return Flexible(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (int i = 0; i < 3; i++)
            _cardevent(eventfield[i], eventfield[i].name)
        ],
      ),
    );
  }

  Widget _card_menu68() {
    return Flexible(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (int i = 3; i < 6; i++)
            _cardevent(eventfield[i], eventfield[i].name)
        ],
      ),
    );
  }

  Widget _card_menu912() {
    return Flexible(
      child: Scrollbar(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            for (int i = j; i < k; i++)
              _cardevent(eventfield[i], eventfield[i].name)
          ],
        ),
      ),
    );
  }

  Widget _page1() {
    return Stack(
      children: [
        _background(),
        Column(
          children: [
            _title(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                  onPressed: () {},
                  child: Text(
                    "4-5",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  onPressed: () {
                    _pageController.jumpToPage(1);
                  },
                  child: Text(
                    "6-8",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: Text(
                    "9-12",
                  ),
                ),
              ),
            ]),
            _card_menu45(),
          ],
        )
      ],
    );
  }

  Widget _page2() {
    return Stack(
      children: [
        _background(),
        Column(
          children: [
            _title(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  onPressed: () {
                    _pageController.jumpToPage(0);
                  },
                  child: Text(
                    "4-5",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                  onPressed: () {},
                  child: Text(
                    "6-8",
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: Text(
                    "9-12",
                  ),
                ),
              ),
            ]),
            _card_menu68(),
          ],
        )
      ],
    );
  }

  Widget _page3() {
    return Scaffold(
        body: Stack(
      children: [
        _background(),
        Column(children: [
          _title(),
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    onPressed: () {
                      _pageController.jumpToPage(0);
                    },
                    child: Text(
                      "4-5",
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                    onPressed: () {
                      _pageController.jumpToPage(1);
                    },
                    child: Text(
                      "6-8",
                    ),
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    onPressed: () {},
                    child: Text(
                      "9-12",
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: _widgetOptions[_selectedIndex],
              ),
            ],
          ),
          _card_menu912(),
          SizedBox(height: 80)
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Image.asset("images/lines.png"),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: FloatingNavbar(
                      currentIndex: _selectedIndex,
                      backgroundColor: Colors.blue,
                      width: 250,
                      borderRadius: 100.0,
                      fontSize: 8.5,
                      items: [
                        FloatingNavbarItem(
                          icon: Icons.personal_video,
                          title: "Live",
                        ),
                        FloatingNavbarItem(
                          icon: Icons.live_tv,
                          title: "Broadcast",
                        ),
                        FloatingNavbarItem(
                          icon: Icons.file_upload,
                          title: "Entry-Based",
                        ),
                        FloatingNavbarItem(
                          icon: Icons.group,
                          title: "Grouped",
                        ),
                      ],
                      onTap: (index) {
                        setState(() {
                          _selectedIndex = index;
                          if (index == 0) {
                            j = 6;
                            k = 14;
                          } else if (index == 1) {
                            j = 14;
                            k = 19;
                          } else if (index == 2) {
                            j = 19;
                            k = 24;
                          } else if (index == 3) {
                            j = 24;
                            k = 28;
                          }
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Image.asset("images/lines2.png"),
                ),
              ],
            ),
          ],
        ),
      ],
    ));
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
        children: [_page1(), _page2(), _page3()],
      ),
    );
  }
}
