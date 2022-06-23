import 'package:flutter/material.dart';
import 'logdropvideo.dart';
import 'smallrigout.dart';
import 'topout.dart';

Column wideLogDropVid(BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text(""),
                    backgroundColor: Colors.blue,
                  ),
                  body: const LogDropVidPlayer(),
                );
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 90.0),
          height: 450,
          width: 300,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.redAccent, //color of border
              width: 3, //width of border
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('images/logdrop_overlay.webp'),
        ),
      ),
      const Text(
        "Log Drop",
        style: TextStyle(
          inherit: false,
          fontSize: 22.0,
          color: Colors.blueAccent,
        ),
      ),
    ],
  );
}

Column wideRigOutVid(BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text(""),
                    backgroundColor: Colors.blue,
                  ),
                  body: const SmallRigOutVidPlayer(),
                );
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 90.0),
          height: 450,
          width: 300,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.redAccent, //color of border
              width: 3, //width of border
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('images/smallrigout_overlay.webp'),
        ),
      ),
      const Text(
        "Small Rig Out",
        style: TextStyle(
          inherit: false,
          fontSize: 22.0,
          color: Colors.blueAccent,
        ),
      ),
    ],
  );
}

Column wideTopOutVid(BuildContext context) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text(""),
                    backgroundColor: Colors.blue,
                  ),
                  body: const TopOutVideoPlayer(),
                );
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 90.0),
          height: 450,
          width: 300,
          alignment: const Alignment(0, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.redAccent, //color of border
              width: 3, //width of border
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset('images/topout_overlay.webp'),
        ),
      ),
      const Text(
        "Top Out",
        style: TextStyle(
          inherit: false,
          fontSize: 22.0,
          color: Colors.blueAccent,
        ),
      ),
    ],
  );
}
