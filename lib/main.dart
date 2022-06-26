import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'small/smallimages.dart';
import 'small/smallmissiontxt.dart';
import 'small/smallbuttons.dart';
import 'small/smallmaindiv.dart';
import 'small/smallreviewdiv.dart';
import 'small/smallfooter.dart';

import 'normal/normalimages.dart';
import 'normal/normalmissiontxt.dart';
import 'normal/normalbuttons.dart';
import 'normal/normalmaindiv.dart';
import 'normal/normalreviews.dart';
import 'normal/normalfooter.dart';

import 'wide/wideimages.dart';
import 'wide/widemissiontxt.dart';
import 'wide/widebuttons.dart';
import 'wide/widemaindiv.dart';
import 'wide/widereviewdiv.dart';
import 'wide/widefooter.dart';
import 'wide/widevidpage.dart';

import 'vids/smallvids.dart';
import 'vids/normalvids.dart';
import 'vids/widevids.dart';
import 'misc.dart';
import 'adminpage.dart';

import 'photopage.dart';
import 'forms/textmessage.dart';

// import 'vids/bigcedarremoval.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(const MyApp());
// }

void main() {
  runApp(const MyApp());
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlphaTree',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'AlphaTree Service'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // void _incrementCounter() {
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          _textMeIcon(context),
          const SizedBox(width: 15, height: 10),
          _callMeIcon(context),
          const SizedBox(width: 15, height: 10),
          scheduleIcon(context),
          // const SizedBox(width: 20, height: 10),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1024) {
            return _buildWideContainer(context);
          } else if (constraints.maxWidth <= 1024 &&
              constraints.maxWidth > 510) {
            return _buildNormalContainer(context);
          } else {
            return _buildSmallContainer(context);
          }
        },
      ),
      floatingActionButton: floatButton(),
    );
  }
}

Widget _textMeIcon(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.chat),
    tooltip: 'Text Me',
    onPressed: () {
      
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return Scaffold(
              backgroundColor: Colors.grey,
              appBar: AppBar(
                title: const Text("Text Messaging"),
                backgroundColor: Colors.blue,
              ),
              body: const TextMessageForm(),
            );
          },
        ),
        );
    },
  );
}

Widget _callMeIcon(BuildContext context) {
  return IconButton(
    icon: const Icon(Icons.call),
    tooltip: 'Call Me',
    onPressed: () {
      launchUrlString("tel://3605168933");
    },
  );
}

Widget _buildSmallContainer(BuildContext context) {
  return Center(
    child: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        smallBannerImage(),
        smallGroupImage(),
        smallMissionText(),
        smallEstimateButton(context),
        // smallVideoGallery2Button(context),
        smallLogDropVid(context),
        smallMainDiv(context),
        smallRigOutVid(context),
        smallEstimateButton(context),
        smallTopOutVid(context),
        smallReviewsDiv(),
        smallReviewsButton(context),
        smallFooter(),
      ],
    ),
  );
}

Widget _buildNormalContainer(BuildContext context) {
  return Center(
    child: ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        normalEstimateButton(context),
        normalBannerImage(),
        normalMissionText(),
        normalGroupImage(),
        normalLogRollVid(context),
        normalMainDiv(context),
        normalRigOutVid(context),
        normalReviewsDiv(),
        normalReviewsButton(context),
        normalTopOutVid(context),
        normalFooter(context),
      ],
    ),
  );
}

Widget _buildWideContainer(BuildContext context) {
  return ListView(
    children: [
      Center(
        child: wideEstimateButton(context),
      ),
      Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          wideGroupImage(),
          const SizedBox(
            height: 10.0,
            width: 90,
          ),
          wideMissionText(),
          const SizedBox(
            height: 10.0,
            width: 93,
          ),
          wideMainDiv(context),
        ],
      ),
      Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 10.0,
            width: 15,
          ),
          wideRigOutVid(context),
          const SizedBox(
            height: 10.0,
            width: 140,
          ),
          wideLogDropVid(context),
          const SizedBox(
            height: 10.0,
            width: 140,
          ),
          wideTopOutVid(context),
          const SizedBox(
            height: 10.0,
            width: 140,
          ),
          wideReviewsDiv(context),
        ],
      ),
      Center(
        child: wideEstimateButton(context),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          widebigCedarRemoval(context),
          widejustGettingStarted(context),
          widebigTreeTopRemoval(context),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          makeItSnow(context),
          widesnowBoundHemlock(context),
          // widedyingWhitePineRemoval(context),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          picWidget(context, "images/gallery/portrait/20200703_122208.webp",
              "images/gallery/portrait/20200703_122208_thumb.webp"),
          picWidget(context, "images/gallery/portrait/20200703_122208.webp",
              "images/gallery/portrait/20200703_122208_thumb.webp"),
          picWidget(context, "images/gallery/portrait/20200703_122216.webp",
              "images/gallery/portrait/20200703_122216_thumb.webp"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "More Photos",
            style: TextStyle(
              fontSize: 28,
              color: Colors.amber,
            ),
          ),
          landscapePhotosButton(context),
          portraitPhotosButton(context),
        ],
      ),
      wideFooter(context),
    ],
  );
}
