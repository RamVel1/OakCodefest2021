import 'package:flutter/material.dart';

// ignore: camel_case_types
class HWcard extends StatefulWidget {
  final String title;
  HWcard({this.title});
  @override
  _HWcardState createState() => _HWcardState();
}

// ignore: camel_case_types
class _HWcardState extends State<HWcard> {
  bool isLongPress = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        setState(() {
          isLongPress = !isLongPress;
        });
      },
      child: Card(
        elevation: 3,
        child: Container(
          padding: EdgeInsets.all(30),
          height: 100,
          width: MediaQuery.of(context).size.width * 0.8,
          color: isLongPress ? Colors.blue : Colors.white,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.title}",
                  style: TextStyle(fontSize: 20.0),
                ),
                Text("${DateTime.now()}")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
