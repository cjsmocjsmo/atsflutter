import 'package:flutter/material.dart';
import 'smallimages.dart';

Padding smallPhoneNumber() {
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

Column smallFooter() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 20),
        height: 800,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              smallPhoneNumber(),
              const Padding(
                padding: EdgeInsets.only(top: 6.0, bottom: 1.0),
                child: Text(
                  "251 East Snow Cap Dr",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey,
                  ),
                ),
              ),
              const Text(
                "Belfair, WA 98528",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "United States",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 1.0),
                child: Text(
                  "License",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "WA #604-037-042",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 1.0),
                child: Text(
                  "Insurance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "#SII4851A201464",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Contractors Insurance NW",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "PO Box 13033",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Olympia WA 98508",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12.0, bottom: 1.0),
                child: Text(
                  "Bond",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "#62922843",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Department Of Labor And Industries",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Contractor Registration",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "PO Box 44450",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const Text(
                "Olympia WA 98504-4450",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: flutterImages("images/flutter_logo2.webp"),
          ),
          Expanded(
            child: firebaseImages("images/firebase2.webp"),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: cloudflareImages("images/cloudflare.webp"),
          ),
        ],
      ),
    ],
  );
}
