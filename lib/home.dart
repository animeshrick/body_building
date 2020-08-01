/*
* The mainPageView contains the main BottomNavigationBar section where you can see
* "home","analytics","schedule","settings",
* */

import 'package:bodybuilding/screens/screenAnalytics.dart';
import 'package:bodybuilding/screens/screenHome.dart';
import 'package:bodybuilding/screens/screenSchedule.dart';
import 'package:bodybuilding/screens/screenSetting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _viewList = [
    ScreenHome(),
    ScreenAnalytics(),
    ScreenSchedule(),
    ScreenSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _viewList.elementAt(_selectedIndex),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: bottomNavigationBar,
        )
      ],
    ));
  }

  Widget get bottomNavigationBar {
    return BottomNavigationBar(
      onTap: onTappedItem,
      currentIndex: _selectedIndex,
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // selectedItemColor: kGreenColor,
      iconSize: 25.0,
      items: [
        //item 2
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/gym.svg",
            width: 25.0,
            color: Colors.grey,
          ),
          activeIcon: SvgPicture.asset(
            "assets/gym.svg",
            width: 25.0,
            color: Colors.redAccent,
          ),
          title: Text(""),
        ),

        //item 2
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/chart.svg",
            color: Colors.red,
            width: 25.0,
          ),
          activeIcon: SvgPicture.asset(
            "assets/chart.svg",
            color: Colors.yellowAccent,
            width: 25.0,
          ),
          title: Text(""),
        ),

        //item 3
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/calendar.svg",
            width: 25.0,
            color: Colors.green,
          ),
          activeIcon: SvgPicture.asset(
            "assets/calendar.svg",
            width: 25.0,
            color: Colors.deepPurple,
          ),
          title: Text(""),
        ),

        //item 4
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/settings.svg",
            width: 25.0,
            color: Colors.red,
          ),
          activeIcon: SvgPicture.asset(
            "assets/settings.svg",
            width: 25.0,
            color: Colors.black,
          ),
          title: Text(""),
        ),
      ],
    );
  }
}
