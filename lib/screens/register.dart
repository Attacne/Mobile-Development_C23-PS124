/*
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext c) => Scaffold(
        backgroundColor: const Color(0xff192028),
        body: ScrollConfiguration(
          behavior: MaterialScrollBehavior().copyWith(overscroll: false),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Positioned(
                  top: -size(c).width * 1.25,
                  left: -size(c).width * .25,
                  right: -size(c).width * .25,
                  child: Container(
                    height: size(c).width * 1.6,
                    width: size(c).width * 1.6,
                    decoration: BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark, borderRadius: rounded(1000)),
                  ),
                ),
                Container(
                  width: size(c).width,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: size(c).height * .05),
                        child: Column(
                          children: [
                            Text(
                              read(c).fixedLang == 'Indonesia' ? register_id : register_en,
                              style: TextStyle(color: Cw, fontSize: 30, fontWeight: bold, wordSpacing: 4),
                            ),
                            Text(
                              read(c).fixedLang == 'Indonesia' ? subTitleRegister_id : subTitleRegister_en,
                              style: TextStyle(color: Cw, letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 40),
                          Text(read(c).fixedLang == 'Indonesia' ? fullName_id : fullName_en, style: TextStyle(color: Cw, fontSize: 18)),
                          const SizedBox(height: 5),
                          inputData(c, Icons.person_rounded, read(c).fixedLang == 'Indonesia' ? hintFullName_id : hintFullName_en, false, false),
                          const SizedBox(height: 20),
                          Text(read(c).fixedLang == 'Indonesia' ? userName_id : userName_en, style: TextStyle(color: Cw, fontSize: 18)),
                          const SizedBox(height: 5),
                          inputData(c, Icons.adjust_rounded, read(c).fixedLang == 'Indonesia' ? hintUserName_id : hintUserName_en, false, false),
                          const SizedBox(height: 20),
                          Text(read(c).fixedLang == 'Indonesia' ? emailRegister_id : emailRegister_en, style: TextStyle(color: Cw, fontSize: 18)),
                          const SizedBox(height: 5),
                          inputData(c, Icons.email_rounded, read(c).fixedLang == 'Indonesia' ? hintEmailRegister_id : hintEmailRegister_en, false, true),
                          const SizedBox(height: 20),
                          Text(read(c).fixedLang == 'Indonesia' ? passRegister_id : passRegister_en, style: TextStyle(color: Cw, fontSize: 18)),
                          const SizedBox(height: 5),
                          inputData(c, Icons.lock_rounded, read(c).fixedLang == 'Indonesia' ? hintPassRegister_id : hintPassRegister_en, true, false),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 120 */
/*size(c).height*//*
,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(height: 1, width: 1),
              loginRegister(c, read(c).fixedLang == 'Indonesia' ? btnRegister_id : btnRegister_en, 1.2, () => close(c)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    read(c).fixedLang == 'Indonesia' ? infoRegister_id : infoRegister_en,
                    style: TextStyle(color: read(c).fixTheme ? Cw : Cw.withOpacity(.5), fontSize: 15),
                  ),
                  TextButton(
                    style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () => close(c),
                    child: Text(
                      read(c).fixedLang == 'Indonesia' ? btnSignIn_id : btnSignIn_en,
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
*/
