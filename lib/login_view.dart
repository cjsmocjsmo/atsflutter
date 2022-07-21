// import 'package:auth_example/signup/view/signup_view.dart';
// import 'package:auth_service/signup_view.dart';
// import 'package:auth_example/home/view/home_view.dart';
// import 'signup_view.dart';
import 'package:flutter/material.dart';
import 'adminpage.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String? email;
  String? password;
  // final signInData = {

  // }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.red,
      icon: const Icon(Icons.schedule),
      tooltip: 'Admin',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return Material(
                color: Colors.grey,
                child: Scaffold(
                  backgroundColor: Colors.grey,
                  appBar: AppBar(
                    title: const Text('Login'),
                    centerTitle: true,
                  ),
                  body: FocusTraversalGroup(
                    child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.always,
                      onChanged: () {
                        Form.of(primaryFocus!.context!)!.save();
                      },
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ConstrainedBox(
                                constraints:
                                    BoxConstraints.tight(const Size(200, 50)),
                                child: TextFormField(
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return "A Name is required";
                                  //   } else {
                                  //     return null;
                                  //   }
                                  // },
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.person),
                                    labelText: 'email',
                                  ),
                                  onSaved: (String? value) {
                                    email = value;
                                    // print(email);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ConstrainedBox(
                                constraints:
                                    BoxConstraints.tight(const Size(200, 50)),
                                child: TextFormField(
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return "A Name is required";
                                  //   } else {
                                  //     return null;
                                  //   }
                                  // },
                                  decoration: const InputDecoration(
                                    icon: Icon(Icons.person),
                                    labelText: 'password',
                                  ),
                                  onSaved: (String? value) {
                                    password = value;
                                    // print(password);
                                  },
                                ),
                              ),
                            ),
                            // _Loginemail(emailController: _emailController),
                            // const SizedBox(height: 30.0),
                            // _Loginpassword(passwordController: _passwordController),
                            // const SizedBox(height: 30.0),
                            // _SubmitButton(
                            //   email: emailController.text,
                            //   password: passwordController.text,
                            // ),
                            ElevatedButton(
                              onPressed: () {
                                // print(email);
                                // print(password);
                                // print('hello');
                                if (password == "789789") {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) {
                                        return Scaffold(
                                          appBar: AppBar(
                                            title: const Text("AdminPanel"),
                                            backgroundColor: Colors.blue,
                                          ),
                                          body: const AdminPanel(),
                                        );
                                      },
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            // // const _CreateAccountButton(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
