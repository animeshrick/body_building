import 'package:flutter/material.dart';

class ScreenSetting extends StatefulWidget {
  @override
  _ScreenSettingState createState() => _ScreenSettingState();
}

class _ScreenSettingState extends State<ScreenSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
    );
  }
}
