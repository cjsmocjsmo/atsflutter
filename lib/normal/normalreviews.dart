import 'package:flutter/material.dart';



Column normalReviewsDiv(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 20),
        height: 500,
        width: 800,
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
              normalreviewCard("Curt did a great job", "Charlie"),
              normalreviewCard("Curt did a great job", "Charlie"),
              normalreviewCard("Curt did a great job", "Charlie"),
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


class ANormalReview extends StatefulWidget {
  final String approved;
  final String count;
  final String delete;
  final String email;
  final String message;
  final String name;
  final String quarintine;
  final String sig;
  final String uuid;
  final String date;

  const ANormalReview({
    required this.approved,
    required this.count,
    required this.delete,
    required this.email,
    required this.message,
    required this.name,
    required this.quarintine,
    required this.sig,
    required this.uuid,
    required this.date,
  });

  @override
  _ANormalReviewState createState() => _ANormalReviewState();
}

class _ANormalReviewState extends State<ANormalReview> {
  @override
  Widget build(BuildContext context) {
    return normalreviewCard(widget.message, widget.sig);
  }
}

Center normalreviewCard(String rtitle, String sig) {
  return Center(
    child: Card(
      color: Colors.blueAccent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            // leading: Icon(Icons.album),
            title: Text(rtitle),
            // subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
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