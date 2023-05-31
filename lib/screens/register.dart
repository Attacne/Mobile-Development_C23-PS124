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
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                top: -size(c).width * 1.25,
                left: -size(c).width * .25,
                right: -size(c).width * .25,
                child: Container(
                  height: size(c).width * 1.6,
                  width: size(c).width * 1.6,
                  decoration: BoxDecoration(
                      gradient: gradient, borderRadius: rounded(1000)),
                ),
              ),
              Column(
                children: [
                  Container(height: 50),
                  Text(
                    read(c).fixedLang == 'Indonesia'
                        ? register_id
                        : register_en,
                    style: TextStyle(
                      color: Cw,
                      fontSize: 30,
                      fontWeight: bold,
                      wordSpacing: 4,
                    ),
                  ),
                  Text(
                    read(c).fixedLang == 'Indonesia'
                        ? subTitleRegister_id
                        : subTitleRegister_en,
                    style: TextStyle(
                      color: Cw,
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 100, width: 10),
                      Text(
                        read(c).fixedLang == 'Indonesia'
                            ? fullName_id
                            : fullName_en,
                        style: TextStyle(color: Cw, fontSize: 18),
                      ),
                      inputData(c, Icons.person_rounded, hintFullName_id, false,
                          false),
                      const SizedBox(height: 20, width: 10),
                      Text(
                        read(c).fixedLang == 'Indonesia'
                            ? userName_id
                            : userName_en,
                        style: TextStyle(color: Cw, fontSize: 18),
                      ),
                      inputData(c, Icons.adjust_rounded, hintUserName_id, false,
                          false),
                      const SizedBox(height: 20, width: 10),
                      Text(
                        read(c).fixedLang == 'Indonesia'
                            ? emailRegister_id
                            : emailRegister_en,
                        style: TextStyle(color: Cw, fontSize: 18),
                      ),
                      inputData(c, Icons.email_rounded, hintEmailRegister_id,
                          false, true),
                      const SizedBox(height: 20, width: 10),
                      Text(
                        read(c).fixedLang == 'Indonesia'
                            ? passRegister_id
                            : passRegister_en,
                        style: TextStyle(color: Cw, fontSize: 18),
                      ),
                      inputData(c, Icons.lock_rounded, hintPassRegister_id,
                          true, false),
                      const SizedBox(height: 20, width: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 120 /*size(c).height*/,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(height: 1, width: 1),
              loginRegister(c, btnRegister_id, 1.2, () => close(c)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    infoRegister_id,
                    style: TextStyle(color: Cw, fontSize: 15),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () => close(c),
                    child: Text(
                        read(c).fixedLang == 'Indonesia'
                            ? btnSignIn_id
                            : btnSignIn_en,
                        style: TextStyle(color: C1, fontSize: 15)),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
