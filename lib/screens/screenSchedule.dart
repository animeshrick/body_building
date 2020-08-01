import 'package:flutter/material.dart';

class ScreenSchedule extends StatefulWidget {
  @override
  _ScreenScheduleState createState() => _ScreenScheduleState();
}

class _ScreenScheduleState extends State<ScreenSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
      ),
    );
  }
}
