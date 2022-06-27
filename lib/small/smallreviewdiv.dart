// import 'dart:js';

import 'package:cloud_firestore/cloud_firestore.dart';
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

Column smallReviewsDiv(BuildContext context) {
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
          child: StreamBuilder<QuerySnapshot>(
            stream:
                FirebaseFirestore.instance.collection("reviews").snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return !snapshot.hasData
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot data = snapshot.data!.docs[index];
                        return ASmallReview(
                          approved: data["Approved"],
                          count: data["Count"],
                          delete: data["Delete"],
                          email: data["Email"],
                          message: data["Message"],
                          name: data["Name"],
                          quarintine: data["Quarintine"],
                          sig: data["Sig"],
                          uuid: data["UUID"],
                          date: data["Date"],
                        );
                      },
                    );
            },
          ),
        ),
      ),
    ],
  );
}

class ASmallReview extends StatefulWidget {
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

  const ASmallReview({
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
  _ASmallReviewState createState() => _ASmallReviewState();
}

class _ASmallReviewState extends State<ASmallReview> {
  @override
  Widget build(BuildContext context) {
    return reviewCard(widget.message, widget.sig);
  }
}
