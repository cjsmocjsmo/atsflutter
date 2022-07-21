import 'package:flutter/material.dart';
import 'adminreviewdiv.dart';
import 'adminestimatediv.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => AdminPanelState();
}

class AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: <Widget>[
          // LoginView(),
          headerOne(),
          const EstimateDivAdmin(),
          headerTwo(),
          const ReviewDivAdmin(),
        ],
      ),
    );
  }
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

Widget headerTwo() {
  return const Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        "Pending Reviews",
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
