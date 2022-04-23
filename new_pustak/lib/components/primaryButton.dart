// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:new_pustak/constant/color.dart';

Widget primaryButton(BuildContext context, String text, String route) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(primarycolor),
    ),
    onPressed: () {
      Navigator.pushNamed(context, route);
    },
    child: Text(text),
  );
}

Widget popAndPushPrimaryButton(
    BuildContext context, String text, String route) {
  return ElevatedButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(primarycolor),
    ),
    onPressed: () {
      Navigator.popAndPushNamed(context, route);
    },
    child: Text(text),
  );
}
