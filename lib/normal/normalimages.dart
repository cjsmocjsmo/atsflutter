import 'package:flutter/material.dart';

Container normalBannerImage() {
  return Container(
    height: 300.0,
    // width: 1000.0,
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.contain,
        image: AssetImage('images/banner.webp'),
      ),
    ),
  );
}

Padding normalcloudflareImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 75.0,
      width: 307.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding normalfirebaseImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 75.0,
      width: 307.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding normalflutterImages(String logo) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 75.0,
      width: 307.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(logo),
        ),
      ),
    ),
  );
}

Padding normalPhoneNumber() {
  return const Padding(
    padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
    child: Text(
      "360 516 8933",
      style: TextStyle(
        fontSize: 40,
        color: Colors.white,
      ),
    ),
  );
}

Padding normalGroupImage() {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12.0),
    child: Container(
      height: 450.0,
      // width: 1600.0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('images/curt.webp'),
        ),
      ),
    ),
  );
}
