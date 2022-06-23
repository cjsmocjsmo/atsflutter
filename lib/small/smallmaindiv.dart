import 'package:flutter/material.dart';
import 'smallbuttons.dart';
import 'smallfooter.dart';

Column smallMainDiv(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              smallPhoneNumber(),
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
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _picWidget("images/kitsap.webp"),
                    _picWidget("images/mason.webp"),
                    _picWidget("images/pierce.webp"),
                  ],
                ),
              ),
              smallPhotoGalleryButton(context),
              smallPhotoGallery2Button(context),
              smallVideoGallery2Button(context),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _picWidget(String pic) {
  return Container(
    margin: const EdgeInsets.only(left: 2.0, right: 2.0),
    height: 125,
    alignment: const Alignment(0, 0),
    decoration: BoxDecoration(
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
