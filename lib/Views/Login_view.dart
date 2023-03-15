import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hackathon/Views/Home_view.dart';
import 'package:hackathon/Views/SignUp_view.dart';
// import 'package:hello/Screens/Home_page.dart';
// import 'package:hello/Screens/Sign_in.dart';
// import 'package:hello/Screens/Started.dart';
// import 'package:hello/Widgets/round_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:hello/utils/utils.dart';

import '../Wigdets/rounded_button.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final _auth = FirebaseAuth.instance;

  login() {
    if (emailController.text == "sami678@gmail.com" &&
        passwordController.text == '12345678') {
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

  // void Login_Screen() {
  //   _auth
  //       .signInWithEmailAndPassword(email: email, password: password)
  //       .then((value) {})
  //       .onError((error, stackTrace) {
  //     utils().toastMessage(error)
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.greenAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                //  Image(image: AssetImage("Assets/sp.png")),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(fontSize: 50, color: Colors.black),
                    ),
                    SizedBox(
                      height: 50,
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
                          title: "Login",
                          onTap: () {
                            if (_formkey.currentState!.validate()) {
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
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                  child: const Text("Don't have an account")),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignUp()));
                                  },
                                  child: Center(child: Text("SignUp")))
                            ],
                          ),
                        ),
                      ],
                    ),
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
