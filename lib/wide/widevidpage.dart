import 'package:flutter/material.dart';
// import '../vids/dyingwhitepineremoval.dart';
import '../vids/snowboundhemlock.dart';
import '../vids/makeitsnow.dart';
import '../vids/bigtreetopremoval.dart';
import '../vids/justgettingstarted.dart';
import '../vids/bigcedarremoval.dart';

// class WideVideoPlayer extends StatelessWidget {
//   const WideVideoPlayer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'AlphaTree Service',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.black,
//       ),
//       home: const VideoPage(),
//     );
//   }
// }

// class VideoPage extends StatefulWidget {
//   const VideoPage({Key? key}) : super(key: key);

//   @override
//   State<VideoPage> createState() => _VideoPageState();
// }

// class _VideoPageState extends State<VideoPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Row(
//         //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         //   children: <Widget>[
//         //     vidTest(context),
//         //     vidTest(context),
//         //   ],
//         // ),

//         widedyingWhitePineRemoval(context),
//         widesnowBoundHemlock(context),
//         makeItSnow(context),
//         widebigTreeTopRemoval(context),
//         widejustGettingStarted(context),
//         widebigCedarRemoval(context),

//         // const SizedBox(width: 10, height: 400), //a spacer
//       ],
//     );
//   }
// }
//
GestureDetector widebigCedarRemoval(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Big Cedar Removal'),
              ),
              body: const BigCedarRemovalPlayer(),
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

GestureDetector widejustGettingStarted(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Just Getting Started'),
              ),
              body: const JustGettingStartedPlayer(),
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

GestureDetector widebigTreeTopRemoval(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Big Tree Top Removal'),
              ),
              body: const BigTreeTopRemovalPlayer(),
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
            return Scaffold(
              appBar: AppBar(
                title: const Text('Make It Snow'),
              ),
              body: const MakeItSnowPlayer(),
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

GestureDetector widesnowBoundHemlock(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: const Text('Snow Bound Hemlock'),
              ),
              body: const SnowBoundHemlockPlayer(),
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

// GestureDetector widedyingWhitePineRemoval(BuildContext context) {
//   return GestureDetector(
//     onTap: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute<void>(
//           builder: (BuildContext context) {
//             return Scaffold(
//               appBar: AppBar(
//                 title: const Text('Snow Bound Hemlock'),
//               ),
//               body: const DyingWhitePineRemovalPlayer(),
//             );
//           },
//         ),
//       );
//     },
//     child: Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: <Widget>[
//           Container(
//             height: 147,
//             width: 295,
//             alignment: const Alignment(0, 0),
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                   fit: BoxFit.contain,
//                   image: AssetImage("images/webp/DyingWhitePineRemoval.webp"),
//                 ),
//                 border: Border.all(
//                   color: Colors.greenAccent, //color of border
//                   width: 2, //width of border
//                 ),
//                 borderRadius: BorderRadius.circular(35)),
//           ),
//           const Text(
//             "Dying White Pine Removal",
//             style: TextStyle(
//               inherit: false,
//               fontSize: 22.0,
//               color: Colors.blueAccent,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
