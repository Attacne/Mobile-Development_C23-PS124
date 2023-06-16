import 'dart:math';

import 'package:attacne/services/colors.dart';
import 'package:attacne/services/shared_preferences.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChangeLanguage extends StatefulWidget {
  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  String? selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValue();
  }

  loadValue() async {
    selected = await SharedP.getLang('lang');
    Create(context).setFixedLang(selected!);
    setState(() {});
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Watch(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        title: Text(
          Watch(c).fixedLang == 'Indonesia' ? 'Bahasa' : 'Language',
        ),
        flexibleSpace: Container(
          width: size(c).width,
          decoration: BoxDecoration(gradient: Watch(c).fixTheme ? gradientLight : gradientDark),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RadioListTile(
              title: Text(
                Watch(c).fixedLang == 'Indonesia' ? 'Inggris' : 'English',
                style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw),
              ),
              value: 'English',
              groupValue: selected,
              onChanged: (value) => setState(() => selected = value),
            ),
            RadioListTile(
              title: Text(
                'Indonesia',
                style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw),
              ),
              value: 'Indonesia',
              groupValue: selected,
              onChanged: (value) => setState(() => selected = value),
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
                  await Future.delayed(const Duration(milliseconds: 300));
                  SharedP.setLang('lang', selected!);
                  loadValue();
                  // close(c);
                },
                child: Text(
                  Watch(c).fixedLang == 'Indonesia' ? 'Simpan' : 'Save',
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
