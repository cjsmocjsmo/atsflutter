// import 'dart:js';

import 'package:flutter/material.dart';
import 'normalimages.dart';
import 'normalbuttons.dart';
// import 'normalfooter.dart';
// import 'normalbuttons.dart';

Column normalMainDiv(BuildContext context) {
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
              normalPhoneNumber(),
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
              // Wrap(
              //   children: [
              //     Expanded(
              //       child: _picWidget("images/kitsap.webp"),
              //     ),
                  
              //     Expanded(
              //       child: _picWidget("images/mason.webp"),
              //     ),
                  
              //     Expanded(
              //       child: _picWidget("images/pierce.webp"),
              //     ),
              //   ],
              // ),
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
              normalPhotoGalleryButton(context),
              normalPhotoGallery2Button(context),
              normalVideoGalleryButton(context),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _picWidget(String pic) {
  return Container(
    margin: const EdgeInsets.only(left: 0.5, right: 0.5),
    height: 190,
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
