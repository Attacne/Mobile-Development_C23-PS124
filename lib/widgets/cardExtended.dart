import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';

import 'package:flutter/material.dart';

class CardExtended extends StatefulWidget {
  String H1, H2;

  CardExtended(this.H1, this.H2);

  @override
  State<CardExtended> createState() => _CardExtendedState(H1, H2);
}

class _CardExtendedState extends State<CardExtended> {
  _CardExtendedState(this.H1, this.H2);

  String H1, H2;
  bool isTapped1 = true, isExpanded1 = false;

  @override
  Widget build(BuildContext c) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () => setState(() => isTapped1 = !isTapped1),
        onHighlightChanged: (value) => setState(() => isExpanded1 = value),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.fastLinearToSlowEaseIn,
          height: isTapped1
              ? isExpanded1
                  ? 65
                  : 70
              : isExpanded1
                  ? 340
                  : 380,
          width: isExpanded1 ? 385 : 390,
          decoration: read(c).fixTheme
              ? BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark, borderRadius: rounded(20))
              : BoxDecoration(
                  color: C3,
                  borderRadius: rounded(20),
                ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: isTapped1
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 300,
                          // color: Colors.red,
                          child: Text(H1, style: TextStyle(color: Cw, fontSize: 20)),
                        ),
                        Icon(
                          isTapped1 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                          color: Cw,
                          size: 27,
                        ),
                      ],
                    ),
                  ],
                )
              : Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 300,
                          // color: Colors.red,
                          child: Text(H1, style: TextStyle(color: Cw, fontSize: 20)),
                        ),
                        Icon(
                          isTapped1 ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                          color: Cw,
                          size: 27,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      isTapped1 ? '' : H2,
                      style: TextStyle(
                        color: Cw.withOpacity(0.9),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
        ),
      ),
    );
  }
}
