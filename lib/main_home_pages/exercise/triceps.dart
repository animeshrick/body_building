import 'package:flutter/material.dart';

import '../../constants.dart';

class ExcerciseTriceps extends StatefulWidget {
  @override
  _ExcerciseTricepsState createState() => _ExcerciseTricepsState();
}

class _ExcerciseTricepsState extends State<ExcerciseTriceps> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Triceps");
      },
      child: Container(
        width: 140.0,
        margin: EdgeInsets.only(right: 18.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage("assets/shoulder.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black12,
              BlendMode.color,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Triceps".toUpperCase(),
              style: kTitleStyle.copyWith(color: Colors.white),
            ),
            Divider(
              color: kGreenColor,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
