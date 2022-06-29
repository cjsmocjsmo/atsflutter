import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../forms/reviewsform.dart';
import '../forms/estimateform.dart';

Padding wideReviewsButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(0, 0, 0, 0),
                    Color.fromARGB(255, 17, 209, 42),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 40),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text("Reviews"),
                        backgroundColor: Colors.blue,
                      ),
                      body: ReviewsForm(),
                    );
                  },
                ),
              );
              // final Uri url2 =
              //     Uri.parse("https://alphatreeservicevids.pages.dev");
              // launchUrl(url2);
            },
            child: const Center(child: Text('Post A Review')),
          ),
        ],
      ),
    ),
  );
}

Padding wideEstimateButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(0, 0, 0, 0),
                    Color.fromARGB(255, 141, 29, 29),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 40),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text("Estimate"),
                        backgroundColor: Colors.blue,
                      ),
                      body: const EstimateForm(),
                    );
                  },
                ),
              );
              // final Uri url2 =
              //     Uri.parse("https://alphatreeservicevids.pages.dev");
              // launchUrl(url2);
            },
            child: const Center(child: Text('Schedule An Estimate')),
          ),
        ],
      ),
    ),
  );
}

Padding widePhotoGalleryButton() {
  final Uri url = Uri.parse("https://alphatreeservicegallery.pages.dev");
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              launchUrl(url);
            },
            child: const Text('Photo Gallery'),
          ),
        ],
      ),
    ),
  );
}

Padding wideVideoGalleryButton() {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              final Uri url2 =
                  Uri.parse("https://alphatreeservicevids.pages.dev");
              launchUrl(url2);
            },
            child: const Text('Video Gallery'),
          ),
        ],
      ),
    ),
  );
}
