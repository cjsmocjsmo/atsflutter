import 'package:flutter/material.dart';

const widemissionText =
    "At Alpha Tree Service, we specialize in removing trees from "
    "some of the tightest areas around homes in Washington. We have "
    "the tools to get your job done safely, with more than 15 year "
    "of experience in the tree industry. The weather can be unpredictable "
    "so we are here to help whether the tree has fallen on your home "
    "or in your yard. We will leave your property as we found it or "
    "better! We look forward to helping you with all your tree care needs.";

Container wideMissionText() {
  return Container(
    height: 300,
    width: 500,
    alignment: const Alignment(0, 0),
    color: Colors.black,
    child: const Padding(
      padding: EdgeInsets.only(left: 17.0, right: 17.0),
      child:
          //   ConstrainedBox(
          //     constraints: BoxConstraints.tight(const Size(500, 220)),
          //     child:
          Text(
        widemissionText,
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        //     ),
      ),
    ),
  );
}
