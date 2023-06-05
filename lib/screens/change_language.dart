import 'dart:math';

import 'package:attacne/services/colors.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChangeLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        title: Text(
          read(c).fixedLang == 'Indonesia' ? 'Bahasa' : 'Language',
        ),
        flexibleSpace: Container(
          width: size(c).width,
          decoration: BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RadioListTile(
              title: Text(
                'Indonesia',
                style: TextStyle(color: read(c).fixTheme ? Cb : Cw),
              ),
              value: 'Indonesia',
              groupValue: read(c).selectedLang,
              onChanged: (value) => create(c).setSelectedLang(value!),
            ),
            RadioListTile(
              title: Text(
                'English',
                style: TextStyle(color: read(c).fixTheme ? Cb : Cw),
              ),
              value: 'English',
              groupValue: read(c).selectedLang,
              onChanged: (value) => create(c).setSelectedLang(value!),
            ),
            SizedBox(height: 16.0),
            Container(
              padding: EdgeInsets.all(20),
              height: 90,
              width: size(c).width,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(C1),
                  foregroundColor: MaterialStateProperty.all(Cw),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: rounded(10),
                  )),
                ),
                onPressed: () async {
                  create(c).setFixedLang();
                  await Future.delayed(const Duration(milliseconds: 500));
                  close(c);
                },
                child: Text(
                  read(c).fixedLang == 'Indonesia' ? 'Simpan' : 'Save',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
