import 'package:flutter/material.dart';
import 'logdropvideo.dart';
import 'smallrigout.dart';
import 'topout.dart';

Padding smallLogDropVid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Center(
      child: Container(
        height: 358.0,
        width: 200.0,
        // alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
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
    ),
  );
}

Padding smallRigOutVid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 358.0,
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
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

Padding smallTopOutVid(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 358.0,
      width: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
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
