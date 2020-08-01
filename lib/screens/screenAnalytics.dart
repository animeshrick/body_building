import 'package:flutter/material.dart';

class ScreenAnalytics extends StatefulWidget {
  @override
  _ScreenAnalyticsState createState() => _ScreenAnalyticsState();
}

class _ScreenAnalyticsState extends State<ScreenAnalytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Analytics"),
      ),
    );
  }
}
