import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Roundbutton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool loading;
  const Roundbutton(
      {super.key,
      required this.title,
      required this.onTap,
      this.loading = false});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: loading
                ? CircularProgressIndicator(
                    strokeWidth: 3,
                    color: Colors.black,
                  )
                : Text(
                    "Login ",
                    style: TextStyle(color: Colors.black),
                  )),
      ),
    );
  }
}
