import 'package:flutter/material.dart';
import 'datepicker.dart';

class EstimateForm extends StatefulWidget {
  const EstimateForm({Key? key}) : super(key: key);

  @override
  State<EstimateForm> createState() => _EstimateFormState();
}

class _EstimateFormState extends State<EstimateForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Center(
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
                        // hintText: 'What do people call you?',
                        labelText: 'Name',
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
                        hintText: '100 Rose Ave',
                        labelText: 'Address',
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
                        hintText: 'Seattle WA',
                        labelText: 'City, State',
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
                        hintText: '000-000-0000',
                        labelText: 'Telephone',
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
                        hintText: 'foo@bar.com',
                        labelText: 'Email',
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
                    child: const DatePicker(),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tight(const Size(300, 150)),
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
                      "Discribe the problem",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                    postEstimateButton(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Padding postEstimateButton(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(14),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color.fromARGB(0, 0, 0, 0),
                    Colors.blueAccent,
                    // Color.fromARGB(255, 141, 29, 29),
                    Color.fromARGB(0, 0, 0, 0),
                  ],
                ),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16.0),
              primary: Colors.white,
              textStyle: const TextStyle(fontSize: 40),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text("Back"),
                        backgroundColor: Colors.blue,
                      ),
                      body: const EstimateForm(),
                    );
                  },
                ),
              );
            },
            child: const Center(child: Text('Schedule Estimate')),
          ),
        ],
      ),
    ),
  );
}
