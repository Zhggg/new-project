// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:new_pustak/components/inputText.dart';
import 'package:new_pustak/components/primaryButton.dart';
import 'package:new_pustak/constant/controller.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool view = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create your new account"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                inputText('Name', name),
                SizedBox(
                  height: 30,
                ),
                inputText('Email', email),
                SizedBox(
                  height: 30,
                ),
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
                Text(
                    'Use 8 or more characters with a mix of letters, numbers & symbols'),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                        child: primaryButton(context, 'Register', 'route')),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
