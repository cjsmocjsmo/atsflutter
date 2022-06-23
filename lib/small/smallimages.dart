import 'package:flutter/material.dart';

Container smallBannerImage() {
  return Container(
    height: 170.0,
    width: 800.0,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.contain,
        image: AssetImage('images/banner.webp'),
      ),
    ),
  );
}

Container smallGroupImage() {
  return Container(
    height: 300.0,
    width: 800.0,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.contain,
        image: AssetImage('images/curt.webp'),
      ),
    ),
  );
}

Padding cloudflareImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 30.0,
      width: 123.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding firebaseImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 30.0,
      width: 123.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding flutterImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 30.0,
      width: 123.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}
