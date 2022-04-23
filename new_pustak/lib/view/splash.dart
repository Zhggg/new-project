// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_pustak/constant/color.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Future checkAuth() async {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, 'letgo');
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
            height: 40,
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Powered by',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: '  E-Pustak',
                      style: TextStyle(
                          fontSize: 14,
                          color: primarycolor,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            )),
        body: Center(
            child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'E',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
              TextSpan(
                text: ' Pustak',
                style: TextStyle(
                  fontSize: 30,
                  color: primarycolor,
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
