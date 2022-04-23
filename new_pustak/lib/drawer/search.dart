// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
            top: 35.0,
            left: 15.0,
            right: 15.0,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey[500]),
                suffixIcon: Icon(
                  Icons.search,
                  size: 18.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 15.0,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
