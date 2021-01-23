import 'package:WorkIt/widgets/homeworkcard.dart';
import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  final bool isCompleted;
  final DateTime timetoComplete;
  final String title;
  Timeline({this.isCompleted, this.timetoComplete, this.title});
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  Widget getCardWidget() {
    List<Widget> list = new List<Widget>();
    for (var i = 0; i < 18; i++) {
      list.add(HWcard(title: "Hello $i"));
      list.add(SizedBox(height: 10));
    }
    return new Column(
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 30.0),
                        getCardWidget(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
