import 'package:flutter/material.dart';

IconButton scheduleIcon(BuildContext context) {
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
              body: scheduleIconBody(context),
            );
          },
        ),
      );
    },
  );
}

ListView scheduleIconBody(BuildContext context) {
  return ListView(
    children: <Widget>[
      estimateIndicator("4"),
      headerOne(),
      indicatorGroup("15", "4", "7", "2"),
      headerTwo(),
    ],
  );
}

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
