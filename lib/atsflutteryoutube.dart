// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import '/Model/youtube_model.dart';

class YoutubePlayerDemo extends StatefulWidget {
  const YoutubePlayerDemo({Key? key}) : super(key: key);
  // final String title;

  @override
  YoutubePlayerDemoState createState() => YoutubePlayerDemoState();
}

class YoutubePlayerDemoState extends State<YoutubePlayerDemo> {
  late YoutubePlayerController _ytbPlayerController;
  List<YoutubeModel> videosList = [
    
    const YoutubeModel(id: 1, youtubeId: 'M4ZGLJk7Cjw', thumbnail: "images/dying_white_pine.jpg"), //dying white pine
    const YoutubeModel(id: 2, youtubeId: '5XRaC8RSXbM', thumbnail: "images/douglas_fir_removal.jpg"), //douglas fir removal
    const YoutubeModel(id: 3, youtubeId: 'IZQymhYK59k', thumbnail: "images/snow_bound_hemlock.jpg"), //snow bound hemlock
    const YoutubeModel(id: 4, youtubeId: 'PHDLlOBqkjw', thumbnail: "images/make_it_snow.jpg"), //make it snow
    const YoutubeModel(id: 5, youtubeId: 'mfWPIOh30nI', thumbnail: "images/we_cut_trees.jpg"), //we cut trees
    const YoutubeModel(id: 6, youtubeId: 'CVi0d1aepbE', thumbnail: "images/cedar_tree_removal.jpg"), //cedar tree removal
    const YoutubeModel(id: 7, youtubeId: 'MAhLq6x6jOM', thumbnail: "images/tight_spaces.jpg"), //tight spaces
    const YoutubeModel(id: 8, youtubeId: '9rvT2BEYbf8', thumbnail: "images/wind_damaged_cedar.jpg"), //wind damaged cedar
    const YoutubeModel(id: 9, youtubeId: 'wI5ZR78-aKM', thumbnail: "images/just_getting_started.jpg"), //just getting started
    const YoutubeModel(id: 10, youtubeId: 'okVkEfmoTTA', thumbnail: "images/big_tree_top_removal.jpg"), //big tree top removal
  ];
  // https://youtu.be/M4ZGLJk7Cjw
  // https://youtu.be/5XRaC8RSXbM
  // https://youtu.be/IZQymhYK59k
  // https://youtu.be/PHDLlOBqkjw
  // https://youtu.be/mfWPIOh30nI
  // https://youtu.be/CVi0d1aepbE
  // https://youtu.be/MAhLq6x6jOM
  // https://youtu.be/9rvT2BEYbf8
  // https://youtu.be/wI5ZR78-aKM
  // https://youtu.be/okVkEfmoTTA




  @override
  void initState() {
    super.initState();

    _setOrientation([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _ytbPlayerController = YoutubePlayerController(
          initialVideoId: videosList[0].youtubeId,
          params: const YoutubePlayerParams(
            showFullscreenButton: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    _setOrientation([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _ytbPlayerController.close();
  }

  _setOrientation(List<DeviceOrientation> orientations) {
    SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("YouTubePlayer"),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            _buildYtbView(),
            _buildMoreVideoTitle(),
            _buildMoreVideosView(),
          ],
        ),
      ),
    );
  }

  _buildYtbView() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: _ytbPlayerController != null
          ? YoutubePlayerIFrame(controller: _ytbPlayerController)
          : const Center(child: CircularProgressIndicator()),
    );
  }

  _buildMoreVideoTitle() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 10, 182, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Text(
            "More videos",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }

  _buildMoreVideosView() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
            itemCount: videosList.length,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              // print(videosList[index]);
              return GestureDetector(
                onTap: () {
                  final newCode = videosList[index].youtubeId;
                  _ytbPlayerController.load(newCode);
                  _ytbPlayerController.stop();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  margin: const EdgeInsets.symmetric(vertical: 7),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Positioned(
                          child: Image.asset(videosList[index].thumbnail)
                          // Image.asset("images/douglas_fir_removal.jpg"),
                          // CachedNetworkImage(
                          //   imageUrl:
                          //       "https://img.youtube.com/vi/${videosList[index].youtubeId}/default.jpg",
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        Positioned(
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'images/button-logo200.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}