import 'package:flutter/material.dart';

const normalmissionText =
    "At Alpha Tree Service, we specialize in removing trees from "
    "some of the tightest areas around homes in Washington. We have "
    "the tools to get your job done safely, with more than 15 year "
    "of experience in the tree industry. The weather can be unpredictable "
    "so we are here to help whether the tree has fallen on your home "
    "or in your yard. We will leave your property as we found it or "
    "better! We look forward to helping you with all your tree care needs.";

Container normalMissionText() {
  return Container(
    height: 220,
    alignment: const Alignment(0, 0),
    color: Colors.black,
    child: Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tight(const Size(800, 220)),
        child: const Text(
          normalmissionText,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
