import 'package:flutter/material.dart';

import 'package:hackathon/Services/splash_services.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  SplashSer splash_screen = SplashSer();
  @override
  initState()  {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    splash_screen.islogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.greenAccent,
        child: Center(
            child:
                // Container(
                //   color: Colors.greenAccent,
                // child:
                //   Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // children: [

                Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(image: AssetImage("Assets/sp.png")),
              // // Text(
              //   "Nectar",
              //   style: TextStyle(color: Colors.white, fontSize: 30),
              // )
            ],
          ),
        )
            // ],
            // ),
            // )
            ),
      ),
    );
  }
}
