import 'package:flutter/material.dart';

AppBar myAppBar(String title, bool elevation, String font, bool usefont) {
  return AppBar(
    elevation: elevation ? 1 : 0,
    title: Text(
      "$title",
      style: TextStyle(fontFamily: usefont ? font : null),
    ),
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Colors.blue[500],
            Colors.blue[700],
          ],
        ),
      ),
    ),
  );
}
