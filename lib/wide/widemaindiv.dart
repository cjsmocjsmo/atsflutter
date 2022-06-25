import 'package:flutter/material.dart';
import 'widefooter.dart';

Column wideMainDiv(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        // margin: const EdgeInsets.only(top: 20),
        height: 500,
        width: 500,
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
              widePhoneNumber(),
              const Text(
                "Serving ",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Kitsap, Mason, Pierce",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              const Text(
                "Counties",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // _picWidget("images/kitsap.webp"),
                  _picWidget("images/mason.webp"),
                  _picWidget("images/pierce.webp"),
                ],
              ),
              // ),
              // widePhotoGalleryButton(),
              // // wideVideoGalleryButton(),
              // smallVideoGallery2Button(context),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _picWidget(String pic) {
  return Container(
    margin: const EdgeInsets.only(left: 5.0, right: 5.0),
    height: 275,
    alignment: const Alignment(0, 0),
    decoration: BoxDecoration(
      // color: const Color.fromARGB(255, 47, 28, 218),
      color: Colors.greenAccent,
      border: Border.all(
        color: Colors.greenAccent, //color of border
        width: 2, //width of border
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Image.asset(pic),
  );
}

Padding smallVideoGallery2Button(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute<void>(
              //     builder: (BuildContext context) {
              //       return Scaffold(
              //         appBar: AppBar(
              //           title: const Text("Videos"),
              //           backgroundColor: Colors.blue,
              //         ),
              //         body: const VPPlayer(),
              //       );
              //     },
              //   ),
              // );
            },
            child: const Text('Video Gallery'),
            // child: const Center(
            //   child: Text('Video Gallery2'),
            // ),
          ),
        ],
      ),
    ),
  );
}
