import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

import 'misc.dart';
// import 'adminpage.dart';
import 'login_view.dart';
import 'message.dart';
import 'banner.dart';
import 'groupimage.dart';
import 'estimatebutton.dart';
import 'footer.dart';
import 'reviewsdiv.dart';
import 'maindiv.dart';
import 'reviewsbutton.dart';
import 'mainvidone.dart';
import 'mainvidtwo.dart';
import 'mainvidthree.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

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
          LoginView(),
          const SizedBox(width: 15, height: 10),
          // const SizedBox(width: 20, height: 10),
        ],
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1024) {
            return ListView(
              children: <Widget>[
                // BannerImage(),
                const EstimateButton(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    GroupImage(),
                    MissionText(),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    LogDropVid(),
                    RigOutVid(),
                    TopOutVid(),
                  ],
                ),
                const MainDiv(),
                const Reviews(),
                    
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: const <Widget>[
                //     Reviews(),
                //     MainDiv(),
                    
                //   ],
                // ),
                const ReviewsButton(),
                const Footer(),
              ],
            );
            // } else if (constraints.maxWidth <= 1024 &&
            //     constraints.maxWidth > 510) {
            //   return _buildNormalContainer(context);
          } else {
            return ListView(
              children: const <Widget>[
                BannerImage(),
                EstimateButton(),
                GroupImage(),
                MissionText(),
                LogDropVid(),
                MainDiv(),
                RigOutVid(),
                Reviews(),
                ReviewsButton(),
                TopOutVid(),
                Footer(),
              ],
            );
          }
        },
      ),

      // ListView(
      //   children: const <Widget>[
      //     BannerImage(),
      //     EstimateButton(),
      //     GroupImage(),
      //     MissionText(),
      //     LogDropVid(),
      //     MainDiv(),
      //     RigOutVid(),
      //     Reviews(),
      //     ReviewsButton(),
      //     TopOutVid(),
      //     Footer(),

      //   ],
      // ),
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
              // body: const TextMessageForm(),
              body: LoginView(),
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

// Widget buildSmallContainer(BuildContext context) {
//   return Center(
//     child: ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         // const SmallBannerImage(),
//         const SmallGroupImage(),
//         // const SmallMissionText(),
//         smallEstimateButton(context),
//         // smallVideoGallery2Button(context),
//         smallLogDropVid(context),
//         smallMainDiv(context),
//         smallRigOutVid(context),
//         smallEstimateButton(context),
//         smallTopOutVid(context),
//         const SmallReviewImage(),
//         smallReviewsButton(context),
//         smallFooter(),
//       ],
//     ),
//   );
// }

// Widget _buildNormalContainer(BuildContext context) {
//   return Center(
//     child: ListView(
//       padding: const EdgeInsets.all(8),
//       children: <Widget>[
//         normalEstimateButton(context),
//         normalBannerImage(),
//         normalMissionText(),
//         normalGroupImage(),
//         normalLogRollVid(context),
//         normalMainDiv(context),
//         normalRigOutVid(context),
//         normalReviewsDiv(context),
//         normalReviewsButton(context),
//         normalTopOutVid(context),
//         normalFooter(context),
//       ],
//     ),
//   );
// }

// Widget buildWideContainer(BuildContext context) {
//   return ListView(
//     children: [
//       Center(
//         child: wideEstimateButton(context),
//       ),
//       Wrap(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,

//         children: [
//           wideGroupImage(),
//           const SizedBox(
//             height: 10.0,
//             width: 90,
//           ),
//           wideMissionText(),
//           const SizedBox(
//             height: 10.0,
//             width: 93,
//           ),
//           wideMainDiv(context),
//         ],
//       ),
//       Wrap(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           const SizedBox(
//             height: 10.0,
//             width: 15,
//           ),
//           wideRigOutVid(context),
//           const SizedBox(
//             height: 10.0,
//             width: 140,
//           ),
//           wideLogDropVid(context),
//           const SizedBox(
//             height: 10.0,
//             width: 140,
//           ),
//           wideTopOutVid(context),
//           const SizedBox(
//             height: 10.0,
//             width: 140,
//           ),
//           wideReviewsDiv(context),
//         ],
//       ),
//       Center(
//         child: wideEstimateButton(context),
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           widebigCedarRemoval(context),
//           widejustGettingStarted(context),
//           widebigTreeTopRemoval(context),
//         ],
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           makeItSnow(context),
//           widesnowBoundHemlock(context),
//           // widedyingWhitePineRemoval(context),
//         ],
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           picWidget(context, "images/gallery/portrait/20200703_122208.webp",
//               "images/gallery/portrait/20200703_122208_thumb.webp"),
//           picWidget(context, "images/gallery/portrait/20200703_122208.webp",
//               "images/gallery/portrait/20200703_122208_thumb.webp"),
//           picWidget(context, "images/gallery/portrait/20200703_122216.webp",
//               "images/gallery/portrait/20200703_122216_thumb.webp"),
//         ],
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text(
//             "More Photos",
//             style: TextStyle(
//               fontSize: 28,
//               color: Colors.amber,
//             ),
//           ),
//           landscapePhotosButton(context),
//           portraitPhotosButton(context),
//         ],
//       ),
//       wideFooter(context),
//     ],
//   );
// }
