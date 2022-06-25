import 'package:flutter/material.dart';

class ReviewsForm extends StatefulWidget {
  const ReviewsForm({Key? key}) : super(key: key);

  @override
  State<ReviewsForm> createState() => _ReviewsFormState();
}

class _ReviewsFormState extends State<ReviewsForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Column(
        children: <Widget>[
          Center(
            child: FocusTraversalGroup(
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                onChanged: () {
                  Form.of(primaryFocus!.context!)!.save();
                },
                child: Wrap(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(200, 50)),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'First Name',
                          ),
                          onSaved: (String? value) {
                            debugPrint('Value for field  as "$value"');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(200, 50)),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'Last Name',
                          ),
                          onSaved: (String? value) {
                            debugPrint('Value for field  as "$value"');
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(200, 50)),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            fillColor: Colors.white,
                            icon: Icon(Icons.person),
                            hintText: '100',
                            labelText: 'Email',
                          ),
                          onSaved: (String? value) {
                            debugPrint('Value for field  as "$value"');
                          },
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ConstrainedBox(
                            constraints:
                                BoxConstraints.tight(const Size(400, 200)),
                            child: TextFormField(
                              minLines: 18,
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              onSaved: (String? value) {
                                debugPrint('Value for field  as "$value"');
                              },
                            ),
                          ),
                        ),
                        const Text(
                          "Leave A Review",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          postReviewButton(context),
        ],
      ),
    );
  }
}

Padding postReviewButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(0, 0, 0, 0),
                    Colors.blueAccent,

                    // Color.fromARGB(255, 65, 62, 209),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 40),
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute<void>(
              //     builder: (BuildContext context) {
              //       return Scaffold(
              //         appBar: AppBar(
              //           title: const Text("Back"),
              //           backgroundColor: Colors.blue,
              //         ),
              //         body: const ReviewsForm(),
              //       );
              //     },
              //   ),
              // );
            },
            child: const Center(child: Text('Post Review')),
          ),
        ],
      ),
    ),
  );
}
