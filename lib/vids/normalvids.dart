import 'package:flutter/material.dart';
import 'logdropvideo.dart';
import 'smallrigout.dart';
import 'topout.dart';

Padding normalLogRollVid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 531.0,
      width: 300.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/logdrop_overlay.webp'),
        ),
      ),
      child: GestureDetector(
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
      ),
    ),
  );
}

Padding normalRigOutVid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 531.0,
      width: 300.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/smallrigout_overlay.webp'),
        ),
      ),
      child: GestureDetector(
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
      ),
    ),
  );
}

Padding normalTopOutVid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 531.0,
      width: 300.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/topout_overlay.webp'),
        ),
      ),
      child: GestureDetector(
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
      ),
    ),
  );
}
