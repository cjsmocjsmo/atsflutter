import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'widebuttons.dart';

Center widereviewCard(String rtitle, String sig) {
  return Center(
    child: Card(
      color: Colors.blueAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.album),
            title: Text(
              rtitle,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              // TextButton(
              //   child: const Text('BUY TICKETS'),
              //   onPressed: () {/* ... */},
              // ),
              // const SizedBox(width: 8),
              Text(
                sig,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    ),
  );
}


// final databaseReference = Firestore.instance;
Column wideReviewsDiv(BuildContext context) {
  // final databaseReference = Firestore.instance;
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 20),
        height: 600,
        width: 500,
        alignment: const Alignment(0, 0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 47, 28, 218),
            border: Border.all(
              color: Colors.greenAccent, //color of border
              width: 2, //width of border
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              widereviewCard("Curt did a great job \n Curt did a great job \n Curt did a great job", "Charlie"),
              widereviewCard("Curt did a great job", "Charlie"),
              widereviewCard("Curt did a great job", "Charlie"),
              wideReviewsButton(context),
            ],
          ),
        ),
      ),
      // wideReviewsButton(context),
    ],
  );
}

// class AWideReview extends StatefulWidget {
//   final String approved;
//   final String count;
//   final String delete;
//   final String email;
//   final String message;
//   final String name;
//   final String quarintine;
//   final String sig;
//   final String uuid;
//   final String date;

//   const AWideReview({
//     required this.approved,
//     required this.count,
//     required this.delete,
//     required this.email,
//     required this.message,
//     required this.name,
//     required this.quarintine,
//     required this.sig,
//     required this.uuid,
//     required this.date,
//   });

//   @override
//   _AWideReviewState createState() => _AWideReviewState();
// }

// class _AWideReviewState extends State<AWideReview> {
//   @override
//   Widget build(BuildContext context) {
//     return widereviewCard(widget.message, widget.sig);
//   }
// }
