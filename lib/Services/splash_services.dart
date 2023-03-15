import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hackathon/Views/Login_view.dart';
import 'dart:async';
import 'dart:js';

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:hello/Screens/Login_screen.dart';

class SplashSer {
  // Timer.run(() { })
  void islogin(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Loginpage())));
  }
}
