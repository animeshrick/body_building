import 'package:flutter/material.dart';

import '../../constants.dart';

class ExcerciseChest extends StatefulWidget {
  @override
  _ExcerciseChestState createState() => _ExcerciseChestState();
}

class _ExcerciseChestState extends State<ExcerciseChest> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("chest");
      },
      child: Container(
        width: 140.0,
        margin: EdgeInsets.only(right: 18.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage("assets/chest.jpg"),
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
              "chest".toUpperCase(),
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
