import 'package:flutter/material.dart';

Center wideBannerImage() {
  return Center(
    child: Container(
      height: 400.0,
      // width: 1000.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/banner.webp'),
        ),
      ),
    ),
  );
}

Padding wideGroupImage() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Container(
      height: 350.0,
      width: 650.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/curt.webp'),
        ),
      ),
    ),
  );
}

Padding widecloudflareImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 200.0,
      width: 300.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding widefirebaseImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 150.0,
      width: 265.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding wideflutterImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 120.0,
      width: 235.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}
