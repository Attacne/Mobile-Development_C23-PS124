import 'dart:io';

import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Acne extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: read(c).fixTheme ? Cw : C2,
        body: Stack(
          children: [
            Positioned(
              bottom: size(c).height * .4,
              left: -(900 / 5),
              right: -(900 / 5),
              child: Container(
                height: 900,
                decoration: read(c).fixTheme
                    ? BoxDecoration(
                        gradient: gradient,
                        borderRadius: rounded(1000),
                      )
                    : BoxDecoration(
                        color: C3,
                        borderRadius: rounded(1000),
                      ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text(
                    acneHead_id,
                    style: TextStyle(color: Cw, fontSize: 40, fontWeight: bold),
                  ),
                ),
                Image.asset(
                  height: size(c).height * .35,
                  imgAcne_id,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      btnAcne(c, Icons.camera_alt),
                      btnAcne(c, Icons.add_rounded),
                    ],
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
