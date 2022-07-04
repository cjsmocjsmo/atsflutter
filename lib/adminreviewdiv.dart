import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReviewDivAdmin extends StatelessWidget {
  const ReviewDivAdmin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Column smallReviewsDiv(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          height: 800,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 28, 218),
              border: Border.all(
                color: Colors.greenAccent, //color of border
                width: 2, //width of border
              ),
              borderRadius: BorderRadius.circular(5)),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("reviews")
                .where("Approved", isEqualTo: 'no')
                .where("Quarintine", isEqualTo: 'yes')
                .where("Delete", isEqualTo: 'no')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return !snapshot.hasData
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot data = snapshot.data!.docs[index];
                        return AReview(
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
    );
  }
}

class AReview extends StatefulWidget {
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

  const AReview({
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
  AReviewState createState() => AReviewState();
}

class AReviewState extends State<AReview> {
  @override
  Widget build(BuildContext context) {
    return ReviewCard(
        approved: widget.approved,
        count: widget.count,
        delete: widget.delete,
        date: widget.date,
        email: widget.email,
        name: widget.name,
        message: widget.message,
        quarintine: widget.quarintine,
        uuid: widget.uuid,
        sig: widget.sig);
  }
}

class ReviewCard extends StatelessWidget {
  const ReviewCard(
      {Key? key,
      required this.approved,
      required this.count,
      required this.delete,
      required this.email,
      required this.name,
      required this.message,
      required this.quarintine,
      required this.sig,
      required this.uuid,
      required this.date})
      : super(key: key);

  final String approved;
  final String count;
  final String delete;
  final String email;
  final String name;
  final String message;
  final String quarintine;
  final String uuid;
  final String date;
  final String sig;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.blueAccent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              Text(
                message,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {
                        var docname = "reviews$uuid";
                        var db = FirebaseFirestore.instance;
                        db.collection("reviews").doc(docname).update({
                          'Approved': 'yes',
                          'Quarintine': 'yes',
                          'Delete': 'no'
                        });
                      },
                      child: const Text(
                        "Accept",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: style,
                    onPressed: () {
                      var docname = "reviews$uuid";
                      var db = FirebaseFirestore.instance;
                      db.collection("reviews").doc(docname).update({
                        'Approved': 'no',
                        'Quarintine': 'no',
                        'Delete': 'yes'
                      });
                    },
                    child: const Text(
                      "Reject",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
