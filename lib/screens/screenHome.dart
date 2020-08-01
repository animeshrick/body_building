/*
*The page contains the only home page materials like
* "weekly progress", "List of excercises"
*/

import 'dart:math' as math;

import 'package:bodybuilding/main_home_pages/custom_list_tile.dart';
import 'package:bodybuilding/main_home_pages/exercise/back.dart';
import 'package:bodybuilding/main_home_pages/exercise/biceps.dart';
import 'package:bodybuilding/main_home_pages/exercise/chest.dart';
import 'package:bodybuilding/main_home_pages/exercise/legs.dart';
import 'package:bodybuilding/main_home_pages/exercise/triceps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ScreenHome extends StatefulWidget {
  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    double lol;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.0),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/photo.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text("Body Gain", style: kTitleStyle),
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: SvgPicture.asset(
                        "assets/muscle.svg",
                        width: 35.0,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15.0),
//            InkWell(
//              onTap: () {
//                print("HomeScreen");
//              },
//              child:
            CustomListTile(
              title: Text("Animesh Banerjee", style: kTitleStyle),
              subtitle:
                  Text("You have new notifications", style: kSubtitleStyle),
              trailing: SvgPicture.asset(
                "assets/notification.svg",
                width: 35.0,
              ),
            ),
//            ),
//            CustomListTile(
//              title: Text("List of Excercises", style: kTitleStyle),
//            ),
            SizedBox(height: 25.0),
            SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 180.0,
              margin: EdgeInsets.only(left: 18.0),
              child: ListView(
                //itemCount: 1,
                scrollDirection: Axis.horizontal,
                // physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                // itemBuilder: (context, index) {
                //    Row(
                children: <Widget>[
                  ExcerciseTriceps(),
                  ExerciseLeg(),
                  ExcerciseChest(),
                  ExcerciseLegs(),
                  ExcerciseBiceps(),
                ],
                //  );
                // },
              ),
            ),
            SizedBox(height: 25.0),
            Container(
              width: double.infinity,
              height: 380.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 0.0,
                    left: 20.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: Container(
//                      decoration: BoxDecoration(
//                        color: Colors.black87,
//                        borderRadius:
//                            BorderRadius.only(topLeft: Radius.circular(40.0)),
//                      ),
                        ),
                  ),
                  Positioned(
                    left: 0.0,
                    top: 15.0,
                    right: 0.0,
                    bottom: 0.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        // horizontal: 20.0,
                        vertical: 25.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              children: [
                                Text("Weekly Progress", style: kTitle2Style),
                                Spacer(),
                                Text("25 Jun - 1 July", style: kSubtitle2Style),
                              ],
                            ),
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("72%", style: kProgressStyle),
                                SizedBox(width: 14.0),
                                VerticalDivider(
                                  color: Colors.white,
                                  thickness: 5,
                                ),
                                SizedBox(width: 14.0),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Your Last Exercises",
                                            style: kTitle2Style.copyWith(
                                                fontSize: 11.5),
                                          ),
                                          Spacer(),
                                          IconButton(
                                            onPressed: () {
                                              print(
                                                  "History of your exercises");
                                            },
                                            icon: Icon(Icons.arrow_forward),
                                            color: Colors.grey,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/shoulder.svg",
                                            width: 29.0,
                                            color: Color(0xFFC25BD6),
                                          ),
                                          SvgPicture.asset(
                                            "assets/chest.svg",
                                            width: 29.0,
                                            color: Color(0xFFFC902C),
                                          ),
                                          SvgPicture.asset(
                                            "assets/abdominal.svg",
                                            width: 29.0,
                                            color: Color(0xFF0295ED),
                                          ),
                                          SvgPicture.asset(
                                            "assets/muscle.svg",
                                            width: 29.0,
                                            color: Colors.red,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Slider(
                            value: 72,
                            onChanged: (val) => lol = val,
                            activeColor: Colors.white,
                            max: 100,
                            min: 0.0,
                            inactiveColor: Colors.green,
                          ),
                          SizedBox(height: 25.0),
                          Container(
                            width: double.infinity,
                            height: 50.0,
                            margin: EdgeInsets.symmetric(horizontal: 18.0),
                            child: RaisedButton(
                              onPressed: () {
                                print("See all result");
                              },
                              color: Colors.grey,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Text(
                                "See all result",
                                style:
                                    kTitleStyle.copyWith(color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
