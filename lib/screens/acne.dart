import 'dart:io';

import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Acne extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? Cw : C2,
      body: Stack(
        children: [
          Positioned(
            bottom: size(c).height * .5,
            left: -(900 / 5),
            right: -(900 / 5),
            child: Container(
              height: 900,
              decoration: BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark, borderRadius: rounded(1000)),
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(acneHead_id, style: TextStyle(color: Cw, fontSize: 40, fontWeight: bold)),
                Image.asset(height: size(c).height * .35, read(c).fixTheme ? imgAcneLight_id : imgAcneDark_id, fit: BoxFit.fitWidth),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    btnAcne(c, Icons.camera_alt),
                    btnAcne(c, Icons.add_rounded),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
