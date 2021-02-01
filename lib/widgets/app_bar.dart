import 'package:flutter/material.dart';

AppBar reusableAppBar(BuildContext context, String title) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
    ),
    title: Text(
      '$title',
      style: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}
