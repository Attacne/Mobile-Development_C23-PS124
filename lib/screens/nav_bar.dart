import 'dart:ui';

import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/profile_settings.dart';
import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/shared_preferences.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../databases/database_instance.dart';

DataBaseInstance db = DataBaseInstance();

class NavBarApp extends StatefulWidget {
  const NavBarApp({super.key});

  @override
  NavBarAppState createState() => NavBarAppState();
}

class NavBarAppState extends State<NavBarApp> {
  // DataBaseInstance db = DataBaseInstance();
  // var currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    // db.database;
    super.initState();
    db.database();
    loadValue();
    setState(() {});
  }

  loadValue() async {
    Create(context).setFixedLang(await SharedP.getLang('lang'));
    Create(context).setFixedTheme(context, await SharedP.getTheme('theme'));
  }

  @override
  Widget build(BuildContext c) {
    return WillPopScope(
      onWillPop: () async => await showMyDialogExit(c, 'Exit this app?'),
      child: Scaffold(
        body: destPage[Watch(c).indexNavBar],
        extendBody: true,
        bottomNavigationBar: Watch(c).loadingToCC
            ? Container(
                margin: EdgeInsets.only(top: size(c).width * .0, bottom: size(c).width * .03),
                height: 55,
                color: Watch(c).fixTheme ? Cw : C2,
              )
            : Container(
                margin: EdgeInsets.fromLTRB(size(c).width * .05, size(c).width * .0, size(c).width * .05, size(c).width * .03),
                height: 55,
                decoration: BoxDecoration(
                  color: Watch(c).fixTheme ? Cw : C3,
                  boxShadow: [
                    BoxShadow(color: Cb.withOpacity(.3), blurRadius: 20, offset: Offset(0, 5)),
                  ],
                  borderRadius: rounded(50),
                ),
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: size(c).width * .02),
                  itemBuilder: (c, index) => InkWell(
                    onTap: () => setState(() {
                      Create(c).setIndexNavBar(index); //currentIndex = index;
                      HapticFeedback.lightImpact();
                    }),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width: index == Watch(c).indexNavBar ? size(c).width * .32 : size(c).width * .18,
                          alignment: Alignment.center,
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            height: index == Watch(c).indexNavBar ? 40 : 0,
                            width: index == Watch(c).indexNavBar ? size(c).width * .32 : 0,
                            decoration: BoxDecoration(
                              color: index == Watch(c).indexNavBar ? C1.withOpacity(.2) : Colors.transparent,
                              borderRadius: rounded(50),
                            ),
                          ),
                        ),
                        AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.fastLinearToSlowEaseIn,
                          width: index == Watch(c).indexNavBar ? size(c).width * .30 : size(c).width * .18,
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    width: index == Watch(c).indexNavBar ? size(c).width * .13 : 0,
                                  ),
                                  AnimatedOpacity(
                                    opacity: index == Watch(c).indexNavBar ? 1 : 0,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child: Text(
                                      index == Watch(c).indexNavBar ? '${titleNavBar[index]}' : '',
                                      style: TextStyle(color: C1, fontWeight: FontWeight.w600, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    width: index == Watch(c).indexNavBar ? size(c).width * .03 : 20,
                                  ),
                                  Icon(
                                    icon[index],
                                    size: 30,
                                    color: index == Watch(c).indexNavBar
                                        ? C1
                                        : Watch(c).fixTheme
                                            ? Cb.withOpacity(.5)
                                            : Cw.withOpacity(.5),
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
