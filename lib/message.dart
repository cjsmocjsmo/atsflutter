import 'package:flutter/material.dart';

class MissionText extends StatelessWidget {
  const MissionText({Key? key}) : super(key: key);
  final missionText =
      "At Alpha Tree Service, we specialize in removing trees from "
      "some of the tightest areas around homes in Washington. We have "
      "the tools to get your job done safely, with more than 15 year "
      "of experience in the tree industry. The weather can be unpredictable "
      "so we are here to help whether the tree has fallen on your home "
      "or in your yard. We will leave your property as we found it or "
      "better! We look forward to helping you with all your tree care needs.";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1024) {
        return Container(
          height: 300,
          width: 500,
          alignment: const Alignment(0, 0),
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 17.0),
            child:
                //   ConstrainedBox(
                //     constraints: BoxConstraints.tight(const Size(500, 220)),
                //     child:
                Text(
              missionText,
              style: const TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
              //     ),
            ),
          ),
        );
      } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 510) {
        return Container(
          height: 220,
          alignment: const Alignment(0, 0),
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 7.0, right: 7.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(800, 220)),
              child: Text(
                missionText,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      } else {
        return Container(
          height: 350,
          width: 500,
          alignment: const Alignment(0, 0),
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 17.0),
            child: ConstrainedBox(
              constraints: BoxConstraints.tight(const Size(500, 300)),
              child: Text(
                missionText,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
                //     ),
              ),
            ),
          ),
        );
      }
    });
  }
}

// Container normalMissionText() {
//   return Container(
//     height: 220,
//     alignment: const Alignment(0, 0),
//     color: Colors.black,
//     child: Padding(
//       padding: const EdgeInsets.only(left: 7.0, right: 7.0),
//       child: ConstrainedBox(
//         constraints: BoxConstraints.tight(const Size(800, 220)),
//         child: Text(
//           missionText,
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//           ),
//         ),
//       ),
//     ),
//   );
// }

class SmallMissionText extends StatelessWidget {
  const SmallMissionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// Container smallMissionText() {
    return Container(
      height: 210,
      alignment: const Alignment(0, 0),
      color: Colors.black,
      child: const Padding(
        padding: EdgeInsets.only(left: 24.0, right: 24.0),
        child: Text(
          "At Alpha Tree Service, we specialize in removing trees from "
          "some of the tightest areas around homes in Washington. We have "
          "the tools to get your job done safely, with more than 15 year "
          "of experience in the tree industry. The weather can be unpredictable "
          "so we are here to help whether the tree has fallen on your home "
          "or in your yard. We will leave your property as we found it or "
          "better! We look forward to helping you with all your tree care needs.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}



// const widemissionText =
//     "At Alpha Tree Service, we specialize in removing trees from "
//     "some of the tightest areas around homes in Washington. We have "
//     "the tools to get your job done safely, with more than 15 year "
//     "of experience in the tree industry. The weather can be unpredictable "
//     "so we are here to help whether the tree has fallen on your home "
//     "or in your yard. We will leave your property as we found it or "
//     "better! We look forward to helping you with all your tree care needs.";


