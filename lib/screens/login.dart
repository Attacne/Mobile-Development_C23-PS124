import 'package:attacne/screens/nav_bar.dart';
import 'package:attacne/screens/register.dart';
import 'package:attacne/services/colors.dart';
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
                gradient: gradient,
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
                gradient: gradient,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: size(c).height * .1),
                      Text(
                        login_id,
                        style: TextStyle(
                          color: Cw,
                          fontSize: 40,
                          fontWeight: bold,
                          letterSpacing: 2,
                          wordSpacing: 4,
                        ),
                      ),
                      Text(
                        subTitleLogin_id,
                        style: TextStyle(
                          color: Cw,
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                top: size(c).height * .11, bottom: 5),
                            child: Text(
                              emailLogin_id,
                              style: TextStyle(color: Cw, fontSize: 20),
                            ),
                          ),
                          inputData(c, Icons.email_rounded, hintEmailLogin_id,
                              false, true),
                          Padding(
                            padding: EdgeInsets.only(
                                top: size(c).height * .02, bottom: 5),
                            child: Text(
                              passLogin_id,
                              style: TextStyle(color: Cw, fontSize: 20),
                            ),
                          ),
                          inputData(c, Icons.lock_rounded, hintPassLogin_id, true,
                              false),
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
            loginRegister(c, btnLogin_id, 1.2, () => openDelete(c, NavBarApp())),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  infoLogin_id,
                  style: TextStyle(color: Cw, fontSize: 15),
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () => open(c, Register()),
                  child: Text(btnSignUp_id,
                      style: TextStyle(color: C1, fontSize: 15)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
