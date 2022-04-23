// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget inputText(String label,TextEditingController controller){
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: label),
    validator: (value) => value!.isEmpty ? 'This field is required' : null,
  );
}