import 'package:flutter/material.dart';

Container daycard(String text, String description, String date) {
  return Container(
    child: Card(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.blue[600],
              Colors.blue[600],
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$text",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontFamily: "Vollkorn"),
              ),
              Text(
                "$description",
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                ),
              ),
              Text(
                "$date",
                style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                    fontFamily: "Vollkorn",
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
