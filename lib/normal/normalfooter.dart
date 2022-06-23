import 'package:flutter/material.dart';
import 'normalimages.dart';

Card normalAddressCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(33.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            "Address",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "251 East Snow Cap Dr",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "Belfair, WA 98528",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "United States",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

Card normalLicenseCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(49.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            "License",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "WA #604-037-042",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

Card normalInsuranceCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            "Insurance",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "#SII4851A201464",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "Contractors Insurance NW",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "PO Box 13033",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "Olympia WA 98508",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

// Card normalBondCard(BuildContext context) {
//   return Card(
//     color: Colors.blueAccent,
//     child: Padding(
//       padding: const EdgeInsets.all(49.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: const <Widget>[
//           Text(
//             "Bond",
//             style: TextStyle(
//               fontSize: 20,
//               color: Colors.black,
//             ),
//           ),
//           Text(
//             "#62922843",
//             style: TextStyle(
//               fontSize: 14,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }

Card normalRegistrationCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(29.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Text(
            "Bond",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Text(
            "#62922843",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "Department Of Labor And Industries",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "Contractor Registration",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "PO Box 44450",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Text(
            "Olympia WA 98504-4450",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    ),
  );
}

Column normalFooter(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      normalPhoneNumber(),
      Container(
        margin: const EdgeInsets.only(top: 20),
        height: 475,
        alignment: const Alignment(0, 0),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 47, 28, 218),
            border: Border.all(
              color: Colors.greenAccent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Center(
            child: Wrap(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // normalBondCard(context),
                normalLicenseCard(context),
                normalAddressCard(context),
                normalInsuranceCard(context),

                // normalPhoneNumber(),
                normalRegistrationCard(context),
              ],
            ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: normalflutterImages("images/flutter_logo2.webp"),
          ),
          Expanded(
            child: normalfirebaseImages("images/firebase2.webp"),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: normalcloudflareImages("images/cloudflare.webp"),
          ),
        ],
      ),
    ],
  );
}
