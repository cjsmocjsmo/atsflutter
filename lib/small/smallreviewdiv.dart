import 'package:flutter/material.dart';

Center reviewCard(String rtitle, String sig) {
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

Column smallReviewsDiv() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 20),
        height: 500,
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
              reviewCard("Curt did a great job", "Charlie"),
              reviewCard("Curt did a great job", "Charlie"),
              reviewCard("Curt did a great job", "Charlie"),
              // const Text(
              //   "Reviews",
              //   style: TextStyle(
              //     fontSize: 32,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ],
  );
}
