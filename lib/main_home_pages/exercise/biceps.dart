import 'package:flutter/material.dart';

import '../../constants.dart';

class ExcerciseBiceps extends StatefulWidget {
  @override
  _ExcerciseBicepsState createState() => _ExcerciseBicepsState();
}

class _ExcerciseBicepsState extends State<ExcerciseBiceps> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Biceps");
      },
      child: Container(
        width: 140.0,
        margin: EdgeInsets.only(right: 18.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage("assets/biceps.jpeg"),
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
              "Biceps".toUpperCase(),
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
