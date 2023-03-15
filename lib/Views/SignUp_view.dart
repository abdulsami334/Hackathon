import 'dart:ui';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/Views/Home_view.dart';
// import 'package:hello/Screens/Home_page.dart';
// import 'package:hello/Screens/Sign_in.dart';
// import 'package:hello/Screens/Started.dart';
// import 'package:hello/Widgets/round_button.dart';
// import 'package:hello/utils/utils.dart';

import '../Wigdets/rounded_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final usernameController = TextEditingController();
  // FirebaseAuth _auth = FirebaseAuth.instance;
  // fireBaseAuthenticaion fireBaseAuthenticaion = fireBaseAuthenticaion();
  login() {
    if (emailController.text == "sami678@gmail.com" &&
        passwordController.text == '12345678' &&
        usernameController.text == "Sami") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage()));
    } else {
      print('error');
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void Login_Screen() {
    setState(() {
      loading = true;
    });
    // _auth
    //.createUserWithEmailAndPassword(
    //       email: emailController.text.toString(),
    //       password: passwordController.text.toString())
    //   .then((value) {
    // setState(() {
    //   loading = false;
    // });
    // }).onError((error, stackTrace) {
    //   setState(() {
    //     loading = false;
    //   });
    //   //utils().toastMessage(error.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        backgroundColor: Colors.greenAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SignUp",
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Form(
                          key: _formkey,
                          child: Column(
                            children: [
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                    labelText: "Username",
                                    hintText: "Username",
                                    prefixIcon:
                                        Icon(Icons.person_add_alt_1_outlined)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Username";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    hintText: "sami@gmail.com",
                                    prefixIcon: Icon(Icons.alternate_email)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Email";
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                controller: passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: "Password",
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon:
                                        Icon(Icons.remove_red_eye_rounded)),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter Password";
                                  }
                                  return null;
                                },
                              ),
                            ],
                          )),
                      SizedBox(height: 50),
                      Roundbutton(
                        title: "Sign Up",
                        loading: loading,
                        onTap: () {
                          if (_formkey.currentState!.validate()) {
                            void login;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Homepage()));
                          }
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: const Text("Already have an account")),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => login()));
                              },
                              child: Center(child: Text("Login")))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
