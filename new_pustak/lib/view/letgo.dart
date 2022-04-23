// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:new_pustak/constant/color.dart';

class LetGo extends StatelessWidget {
  const LetGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Let's",
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: "  Go",
                    style: TextStyle(
                        fontSize: 50,
                        color: primarycolor,
                        fontWeight: FontWeight.w900),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signin');
                    },
                    child: Text("Sign In"))),
            SizedBox(
                width: 300,
                child: ElevatedButton(onPressed: () {}, child: Text("Skip"))),
          ],
        ),
      )),
    );
  }
}
