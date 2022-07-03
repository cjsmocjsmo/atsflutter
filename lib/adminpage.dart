import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => AdminPanelState();
}

class AdminPanelState extends State<AdminPanel> {
  // final _formKey = GlobalKey<FormState>();
  // TextEditingController nameController = TextEditingController();
  // TextEditingController emalController = TextEditingController();
  // TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.red,
      icon: const Icon(Icons.schedule),
      tooltip: 'Admin',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Scaffold(
                backgroundColor: Colors.grey,
                appBar: AppBar(
                  title: const Text("Admin Panel"),
                  backgroundColor: Colors.blue,
                ),
                body: ListView(
                  children: <Widget>[
                    estimateIndicator("4"),
                    headerOne(),
                    indicatorGroup("15", "4", "7", "2"),
                    const ReviewDivAdmin(),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

// ListView scheduleIconBody(BuildContext context) {
//   return ListView(
//     children: <Widget>[
//       estimateIndicator("4"),
//       headerOne(),
//       indicatorGroup("15", "4", "7", "2"),
//       headerTwo(),
//     ],
//   );
// }

// SizedBox(width: 20, height: 10), //a spaceer

Widget indicatorGroup(
    String total, String pending, String accepted, String rejected) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      indicator(total, "Total"),
      indicator(pending, "Pending"),
      indicator(accepted, "Accepted"),
      indicator(rejected, "Rejected"),
    ],
  );
}

Widget headerOne() {
  return const Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        "Estimate Requests",
        style: TextStyle(
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          color: Colors.black,
          fontSize: 42,
        ),
      ),
    ),
  );
}

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
          //     const Text(
          //   "Pending Reviews",
          //   style: TextStyle(
          //     decoration: TextDecoration.underline,
          //     decorationColor: Colors.black,
          //     color: Colors.black,
          //     fontSize: 42,
          //   ),
          // ),
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
                      onPressed: () {},
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
                    onPressed: () {},
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

Widget indicator(String num, String cat) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        Text(
          num,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 32,
          ),
        ),
        Text(
          cat,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    ),
  );
}

Widget estimateIndicator(String num) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: <Widget>[
        Text(
          num,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 32,
          ),
        ),
        // Text(
        //   cat,
        //   style: const TextStyle(
        //     color: Colors.black,
        //   ),
        // ),
      ],
    ),
  );
}
