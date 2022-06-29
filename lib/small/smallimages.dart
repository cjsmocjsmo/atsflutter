import 'package:flutter/material.dart';

class SmallBannerImage extends StatelessWidget {
  const SmallBannerImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}

class SmallGroupImage extends StatelessWidget {
  const SmallGroupImage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}

Padding footerImages(String logo) {
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

// Padding cloudflareImages(String logo) {
//   return Padding(
//     padding: const EdgeInsets.all(5.0),
//     child: Container(
//       height: 30.0,
//       width: 123.0,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.contain,
//           image: AssetImage(logo),
//         ),
//       ),
//     ),
//   );
// }

// Padding firebaseImages(String logo) {
//   return Padding(
//     padding: const EdgeInsets.all(5.0),
//     child: Container(
//       height: 30.0,
//       width: 123.0,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.contain,
//           image: AssetImage(logo),
//         ),
//       ),
//     ),
//   );
// }

// Padding flutterImages(String logo) {
//   return Padding(
//     padding: const EdgeInsets.all(5.0),
//     child: Container(
//       height: 30.0,
//       width: 123.0,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           fit: BoxFit.contain,
//           image: AssetImage(logo),
//         ),
//       ),
//     ),
//   );
// }


