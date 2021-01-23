import 'package:WorkIt/widgets/appbar.dart';
import 'package:WorkIt/widgets/daycard.dart';
import 'package:WorkIt/widgets/homeworkcard.dart';
import 'package:WorkIt/widgets/timeline.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar("Your Home Works", false, null, false),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black,
                          blurRadius: 5.0,
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [
                          Colors.blue[500],
                          Colors.blue[700],
                        ],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                    ),
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Container(
                    height: 120.0,
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 8,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          child: daycard("Hello", "dex", "2001"),
                          width: 250,
                          height: 70,
                        ),
                        Container(
                          child: daycard("Hello", "hi", "2021"),
                          width: 250,
                          height: 70,
                        ),
                        Container(
                          child: daycard("Hello", "hi", "2021"),
                          width: 250,
                          height: 70,
                        ),
                        Container(
                          child: daycard("Hello", 'hi', "2021"),
                          width: 250,
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Timeline()
            ],
          ),
        ),
      ),
    );
  }
}
