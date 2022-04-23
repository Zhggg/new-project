// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final String? tag;
  final String? imgUrl;

  ItemWidget({this.title, this.subTitle, this.tag, this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        height: 350.0,
        width: 150.0,
        decoration: BoxDecoration(
          color: Color(0xFFF2F0F0),
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black87,
              offset: Offset(2, 1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: 300.0,
              width: 250.0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                ),
                child: Image(
                  image: AssetImage("assets/book1.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Column(
                children: [
                  Text(
                    title!,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
