import 'package:flutter/material.dart';
import '../vids/dyingwhitepineremoval.dart';
import '../vids/snowboundhemlock.dart';
import '../vids/makeitsnow.dart';
import '../vids/bigtreetopremoval.dart';
import '../vids/justgettingstarted.dart';
import '../vids/bigcedarremoval.dart';

class SmallVideoPlayer extends StatelessWidget {
  const SmallVideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlphaTree Service',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const VideoPage(),
    );
  }
}

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: <Widget>[
        //     vidTest(context),
        //     vidTest(context),
        //   ],
        // ),

        dyingWhitePineRemoval(context),
        snowBoundHemlock(context),
        makeItSnow(context),
        bigTreeTopRemoval(context),
        justGettingStarted(context),
        bigCedarRemoval(context),


        
        // const SizedBox(width: 10, height: 400), //a spacer
      ],
    );
  }
}

GestureDetector bigCedarRemoval(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: BigCedarRemovalPlayer(),
            );
          },
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 147,
            width: 295,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("images/webp/BigCedarTreeRemoval.webp"),
                ),
                border: Border.all(
                  color: Colors.greenAccent, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(35)),
          ),
          const Text(
            "Big Cedar Removal",
            style: TextStyle(
              inherit: false,
              fontSize: 22.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}

GestureDetector justGettingStarted(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: JustGettingStartedPlayer(),
            );
          },
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 147,
            width: 295,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("images/webp/JustGettingStarted.webp"),
                ),
                border: Border.all(
                  color: Colors.greenAccent, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(35)),
          ),
          const Text(
            "Just Getting Started",
            style: TextStyle(
              inherit: false,
              fontSize: 22.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}

GestureDetector bigTreeTopRemoval(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: BigTreeTopRemovalPlayer(),
            );
          },
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 147,
            width: 295,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("images/webp/BigTreeTopRemoval.webp"),
                ),
                border: Border.all(
                  color: Colors.greenAccent, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(35)),
          ),
          const Text(
            "Big Tree Stop Removal",
            style: TextStyle(
              inherit: false,
              fontSize: 22.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}

GestureDetector makeItSnow(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: MakeItSnowPlayer(),
            );
          },
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 147,
            width: 295,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("images/webp/MakeItSnow.webp"),
                ),
                border: Border.all(
                  color: Colors.greenAccent, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(35)),
          ),
          const Text(
            "Make It Snow",
            style: TextStyle(
              inherit: false,
              fontSize: 22.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}

GestureDetector snowBoundHemlock(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: SnowBoundHemlockPlayer(),
            );
          },
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 147,
            width: 295,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("images/webp/SnowBoundHemlock.webp"),
                ),
                border: Border.all(
                  color: Colors.greenAccent, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(35)),
          ),
          const Text(
            "Snow Bound Hemlock",
            style: TextStyle(
              inherit: false,
              fontSize: 22.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}

GestureDetector dyingWhitePineRemoval(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return const Scaffold(
              body: DyingWhitePineRemovalPlayer(),
            );
          },
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 147,
            width: 295,
            alignment: const Alignment(0, 0),
            decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage("images/webp/DyingWhitePineRemoval.webp"),
                ),
                border: Border.all(
                  color: Colors.greenAccent, //color of border
                  width: 2, //width of border
                ),
                borderRadius: BorderRadius.circular(35)),
          ),
          const Text(
            "Dying White Pine Removal",
            style: TextStyle(
              inherit: false,
              fontSize: 22.0,
              color: Colors.blueAccent,
            ),
          ),
        ],
      ),
    ),
  );
}
