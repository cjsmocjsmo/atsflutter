import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class EstimateDivAdmin extends StatelessWidget {
  const EstimateDivAdmin({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                .collection("estimate")
                .where("delete", isEqualTo: 'no')
                .snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return !snapshot.hasData
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot data = snapshot.data!.docs[index];
                        return AEstimate(
                          name: data['name'],
                          address: data['address'],
                          citystate: data['citystate'],
                          telephone: data['telephone'],
                          delete: data["delete"],
                          email: data["email"],
                          message: data["message"],
                          uuid: data["uuid"],
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

class AEstimate extends StatefulWidget {
  final String name;
  final String address;
  final String citystate;
  final String telephone;
  final String delete;
  final String email;
  final String message;
  final String uuid;

  const AEstimate({
    Key? key,
    required this.name,
    required this.address,
    required this.citystate,
    required this.telephone,
    required this.delete,
    required this.email,
    required this.message,
    required this.uuid,
  }) : super(key: key);

  @override
  AEstimateState createState() => AEstimateState();
}

class AEstimateState extends State<AEstimate> {
  @override
  Widget build(BuildContext context) {
    return EstimateCard(
      name: widget.name,
      address: widget.address,
      citystate: widget.citystate,
      telephone: widget.telephone,
      delete: widget.delete,
      email: widget.email,
      message: widget.message,
      uuid: widget.uuid,
    );
  }
}

class EstimateCard extends StatelessWidget {
  const EstimateCard({
    Key? key,
    required this.name,
    required this.address,
    required this.citystate,
    required this.telephone,
    required this.delete,
    required this.email,
    required this.message,
    required this.uuid,
  }) : super(key: key);

  final String name;
  final String address;
  final String citystate;
  final String telephone;
  final String delete;
  final String email;
  final String message;
  final String uuid;

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
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Text(
                telephone,
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
                address,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                citystate,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                email,
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
                        var docname = "estimate$uuid";
                        var db = FirebaseFirestore.instance;
                        db
                            .collection("estimate")
                            .doc(docname)
                            .update({'delete': "yes"});
                      },
                      child: const Text(
                        "Completed",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
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
