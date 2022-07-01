import 'package:atsflutter/photobutton2.dart';
import 'package:flutter/material.dart';
import 'footercards.dart'; //for phonenumber
// import 'photobutton1.dart';
import 'photobutton1.dart';
import 'videobutton.dart';

class MainDiv extends StatelessWidget {
  const MainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1024) {
          return const WideMainDiv();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
          return const NormalMainDiv();
        } else {
          return const SmallMainDiv();
        }
      },
    );
  }
}

class SmallMainDiv extends StatelessWidget {
  const SmallMainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                phoneNumber(),
                fText("Serving ", 28),
                fText("Kitsap, Mason, Pierce", 28),
                fText("Counties", 28),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      // phoneNumber(),
                      SmallPicWidget(pic: "images/kitsap.webp"),
                      SmallPicWidget(pic: "images/mason.webp"),
                      SmallPicWidget(pic: "images/pierce.webp"),
                    ],
                  ),
                ),
                const PhotoGalleryButton(),
                const PhotoGalleryButton2(),
                const VideoGalleryButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SmallPicWidget extends StatelessWidget {
  const SmallPicWidget({Key? key, required this.pic}) : super(key: key);
  final String pic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2.0, right: 2.0),
      height: 130,
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
}

class NormalMainDiv extends StatelessWidget {
  const NormalMainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                phoneNumber(),
                fText("Serving ", 28),
                fText("Kitsap, Mason, Pierce", 28),
                fText("Counties", 28),

                // Wrap(
                //   children: [
                //     Expanded(
                //       child: _normalpicWidget("images/kitsap.webp"),
                //     ),

                //     Expanded(
                //       child: _normalpicWidget("images/mason.webp"),
                //     ),

                //     Expanded(
                //       child: _normalpicWidget("images/pierce.webp"),
                //     ),
                //   ],
                // ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                      NormalPicWidget(pic: "images/kitsap.webp"),
                      NormalPicWidget(pic: "images/mason.webp"),
                      NormalPicWidget(pic: "images/pierce.webp"),
                    ],
                  ),
                ),
                const PhotoGalleryButton(),
                const PhotoGalleryButton2(),
                const VideoGalleryButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class NormalPicWidget extends StatelessWidget {
  const NormalPicWidget({Key? key, required this.pic}) : super(key: key);
  final String pic;

  @override
  Widget build(BuildContext context) {
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
}

class WideMainDiv extends StatelessWidget {
  const WideMainDiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                phoneNumber(),
                fText("Serving ", 28),
                fText("Kitsap, Mason, Pierce", 28),
                fText("Counties", 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    WidePicWidget(pic: "images/kitsap.webp"),
                    WidePicWidget(pic: "images/mason.webp"),
                    WidePicWidget(pic: "images/pierce.webp"),
                  ],
                ),
                // ),
                const PhotoGalleryButton(),
                const PhotoGalleryButton2(),
                const VideoGalleryButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class WidePicWidget extends StatelessWidget {
  const WidePicWidget({Key? key, required this.pic}) : super(key: key);
  final String pic;

  @override
  Widget build(BuildContext context) {
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
}
