import 'package:flutter/material.dart';

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
