// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_pustak/components/inputText.dart';
import 'package:new_pustak/components/primaryButton.dart';
import 'package:new_pustak/constant/color.dart';
import 'package:new_pustak/constant/controller.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  bool view = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/Logo.png'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'इ-पुस्तक',
                        style: TextStyle(
                          fontSize: 35,
                          color: ancentcolor,
                          fontWeight: FontWeight.w600,
                        ))
                  ])),
                  inputText('Email', email),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () {
                            view = !view;
                            setState(() {});
                          },
                          icon: view == true
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility)),
                    ),
                    obscureText: view,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: popAndPushPrimaryButton(
                              context, 'Login', 'dashboard')),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' Forget Password?',
                          style: TextStyle(
                              fontSize: 16,
                              color: ancentcolor,
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' OR',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'signup');
                          },
                          child: Text("Signup for Free"))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
