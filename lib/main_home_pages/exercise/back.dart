import 'package:flutter/material.dart';

import '../../constants.dart';

class ExerciseLeg extends StatefulWidget {
  @override
  _ExerciseLegState createState() => _ExerciseLegState();
}

class _ExerciseLegState extends State<ExerciseLeg> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("back");
      },
      child: Container(
        width: 140.0,
        margin: EdgeInsets.only(right: 18.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage("assets/back.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.transparent,
              BlendMode.color,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "BACK",
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
