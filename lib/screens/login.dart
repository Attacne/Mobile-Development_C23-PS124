/*
import 'package:attacne/screens/nav_bar.dart';
import 'package:attacne/screens/register.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/shared_preferences.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  String? value_email = null, value_pass = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValue();
  }

  loadValue() async {
    create(context).setFixedLang(await SharedP.getLang('lang'));
    create(context).setFixedTheme(context, await SharedP.getTheme('theme'));
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: const Color(0xff192028),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Positioned(
            bottom: -size(c).width * .5,
            left: -size(c).width * .5,
            child: Container(
              height: size(c).width * .8,
              width: size(c).width * .8,
              decoration: BoxDecoration(
                gradient: read(c).fixTheme ? gradientLight : gradientDark,
                borderRadius: rounded(1000),
              ),
            ),
          ),
          Positioned(
            top: -size(c).width * .5,
            right: -size(c).width * .5,
            child: Container(
              height: size(c).width,
              width: size(c).width,
              decoration: BoxDecoration(
                gradient: read(c).fixTheme ? gradientLight : gradientDark,
                borderRadius: rounded(1000),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 20, sigmaX: 20),
            child: Container(
              height: size(c).height,
              child: ListView(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: size(c).width * .05, vertical: size(c).height * .13),
                        width: size(c).width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(read(c).fixedLang == 'Indonesia' ? login_id : login_en, style: TextStyle(color: Cw, fontSize: 45, fontWeight: bold, letterSpacing: 2, wordSpacing: 4)),
                            Text(read(c).fixedLang == 'Indonesia' ? subTitleLogin_id : subTitleLogin_en, style: TextStyle(color: Cw, fontSize: 20, fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5),
                            child: Text(
                              read(c).fixedLang == 'Indonesia' ? emailLogin_id : emailLogin_en,
                              style: TextStyle(color: Cw, fontSize: 20),
                            ),
                          ),
                          inputData(c, Icons.email_rounded, read(c).fixedLang == 'Indonesia' ? hintEmailLogin_id : hintEmailLogin_en, false, true),
                          Padding(
                            padding: EdgeInsets.only(top: size(c).height * .02, bottom: 5),
                            child: Text(
                              read(c).fixedLang == 'Indonesia' ? passLogin_id : passLogin_en,
                              style: TextStyle(color: Cw, fontSize: 20),
                            ),
                          ),
                          inputData(c, Icons.lock_rounded, read(c).fixedLang == 'Indonesia' ? hintPassLogin_id : hintPassLogin_en, true, false),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(height: 1, width: 1),
            loginRegister(c, read(c).fixedLang == 'Indonesia' ? btnLogin_id : btnLogin_en, 1.2, () => openDelete(c, NavBarApp())),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  read(c).fixedLang == 'Indonesia' ? infoLogin_id : infoLogin_en,
                  style: TextStyle(color: read(c).fixTheme ? Cw : Cw.withOpacity(.5), fontSize: 15),
                ),
                TextButton(
                  style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                  onPressed: () => open(c, Register()),
                  child: Text(
                    read(c).fixedLang == 'Indonesia' ? btnSignUp_id : btnSignUp_en,
                    style: TextStyle(color: read(c).fixTheme ? C1 : Cw, fontSize: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
*/
