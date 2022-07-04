import 'package:flutter/material.dart';
import 'adminreviewdiv.dart';
import 'adminestimatediv.dart';

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
                    // estimateIndicator("4"),
                    headerOne(),
                    const EstimateDivAdmin(),
                    // indicatorGroup("15", "4", "7", "2"),
                    headerTwo(),
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

