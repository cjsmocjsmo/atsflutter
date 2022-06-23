import 'package:flutter/material.dart';
import 'wideimages.dart';

Padding widePhoneNumber() {
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

Card wideAddressCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(45.0),
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

Card wideLicenseCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(61.0),
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

Card wideInsuranceCard(BuildContext context) {
  return Card(
    color: Colors.blueAccent,
    child: Padding(
      padding: const EdgeInsets.all(37.0),
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

// Card wideBondCard(BuildContext context) {
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

Card wideRegistrationCard(BuildContext context) {
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

Column wideFooter(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      widePhoneNumber(),
      Container(
        margin: const EdgeInsets.only(top: 20),
        height: 350,
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
                // wideBondCard(context),
                wideLicenseCard(context),
                wideAddressCard(context),
                wideInsuranceCard(context),

                // widePhoneNumber(),
                wideRegistrationCard(context),
              ],
            ),

            // ],
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          wideflutterImages("images/flutter_logo2.webp"),
          widecloudflareImages("images/cloudflare.webp"),
          widefirebaseImages("images/firebase2.webp"),
          // Image.asset("images/cloudflare.webp"),
          // // logoImages("images/cloudflare.webp"),

          // Image.asset("images/firebase.jpg"),
          // logoImages("images/firebase.jpg"),
        ],
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: <Widget>[
      //     widecloudflareImages("images/cloudflare.webp"),
      //   ],
      // ),
    ],
  );
}
