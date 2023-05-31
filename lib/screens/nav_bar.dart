import 'dart:ui';

import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/profile.dart';
import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NavBarApp extends StatefulWidget {
  @override
  NavBarAppState createState() => NavBarAppState();
}

class NavBarAppState extends State<NavBarApp> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext c) {
    return WillPopScope(
      onWillPop: () async => await showMyDialogExit(c, 'Exit this app?'),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
                height: 300, decoration: BoxDecoration(gradient: gradient)),
            SafeArea(bottom: false, child: destPage[currentIndex]),
          ],
        ),
        extendBody: true,
        bottomNavigationBar: Container(
          margin: EdgeInsets.fromLTRB(
            size(c).width * .05,
            size(c).width * .0,
            size(c).width * .05,
            size(c).width * .03,
          ),
          height: 55,
          decoration: BoxDecoration(
            color: Cw,
            boxShadow: [
              BoxShadow(
                color: Cb.withOpacity(.3),
                blurRadius: 20,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: rounded(50),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: size(c).width * .02),
            itemBuilder: (c, index) => InkWell(
              onTap: () => setState(() {
                currentIndex = index;
                HapticFeedback.lightImpact();
              }),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? size(c).width * .32
                        : size(c).width * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? 40 : 0,
                      width: index == currentIndex ? size(c).width * .32 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? C1.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: rounded(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? size(c).width * .30
                        : size(c).width * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? size(c).width * .13
                                  : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex
                                    ? '${titleNavBar_id[index]}'
                                    : '',
                                style: TextStyle(
                                  color: C1,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? size(c).width * .03
                                  : 20,
                            ),
                            Icon(
                              icon[index],
                              size: 30,
                              color: index == currentIndex ? C1 : Cb26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
