import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideReview();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalReview();
        } else {
          return const SmallReview();
        }
      },
    );
  }
}

class SmallReview extends StatelessWidget {
  const SmallReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Column smallReviewsDiv(BuildContext context) {
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
    return SmallReviewCard(message: widget.message, sig: widget.sig);
  }
}

class SmallReviewCard extends StatelessWidget {
  const SmallReviewCard({Key? key, required this.message, required this.sig})
      : super(key: key);
  final String message;
  final String sig;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              // leading: Icon(Icons.album),
              title: Text(
                message,
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
}

class NormalReview extends StatelessWidget {
  const NormalReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Column NormalReviewsDiv(BuildContext context) {
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
                          return ANormalReview(
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
    return NormalReviewCard(message: widget.message, sig: widget.sig);
  }
}

class NormalReviewCard extends StatelessWidget {
  const NormalReviewCard({Key? key, required this.message, required this.sig})
      : super(key: key);
  final String message;
  final String sig;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              // leading: Icon(Icons.album),
              title: Text(
                message,
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
}

class WideReview extends StatelessWidget {
  const WideReview({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// Column WideReviewsDiv(BuildContext context) {
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
                          return AWideReview(
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
}

class AWideReview extends StatefulWidget {
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

  const AWideReview({
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
  _AWideReviewState createState() => _AWideReviewState();
}

class _AWideReviewState extends State<AWideReview> {
  @override
  Widget build(BuildContext context) {
    return WideReviewCard(message: widget.message, sig: widget.sig);
  }
}

class WideReviewCard extends StatelessWidget {
  const WideReviewCard({Key? key, required this.message, required this.sig})
      : super(key: key);
  final String message;
  final String sig;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueAccent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              // leading: Icon(Icons.album),
              title: Text(
                message,
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
}