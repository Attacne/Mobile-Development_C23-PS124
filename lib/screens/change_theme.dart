import 'package:attacne/services/colors.dart';
import 'package:attacne/services/shared_preferences.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChangeTheme extends StatefulWidget {
  @override
  State<ChangeTheme> createState() => _ChangeThemeState();
}

class _ChangeThemeState extends State<ChangeTheme> {
  String? selected;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValue();
  }

  loadValue() async {
    selected = await SharedP.getTheme('theme');
    Create(context).setFixedTheme(context, selected!);
    setState(() {});
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Watch(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        title: Text(Watch(c).fixedLang == 'Indonesia' ? 'Tema' : 'Theme'),
        flexibleSpace: Container(width: size(c).width, decoration: BoxDecoration(gradient: Watch(c).fixTheme ? gradientLight : gradientDark)),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RadioListTile(
              title: Text(
                Watch(c).fixedLang == 'Indonesia' ? 'Tema Terang' : 'LightTheme',
                style: TextStyle(color: Watch(c).fixTheme ? C2 : Cw),
              ),
              value: 'LightTheme',
              groupValue: selected,
              onChanged: (value) => setState(() => selected = value),
            ),
            RadioListTile(
              title: Text(
                Watch(c).fixedLang == 'Indonesia' ? 'Tema Gelap' : 'DarkTheme',
                style: TextStyle(color: Watch(c).fixTheme ? C2 : Cw),
              ),
              value: 'DarkTheme',
              groupValue: selected,
              onChanged: (value) => setState(() => selected = value),
            ),
            RadioListTile(
              title: Text(
                Watch(c).fixedLang == 'Indonesia' ? 'Sistem' : 'System',
                style: TextStyle(color: Watch(c).fixTheme ? C2 : Cw),
              ),
              value: 'System',
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
                  SharedP.setTheme('theme', selected!);
                  loadValue();
                },
                child: Text(Watch(c).fixedLang == 'Indonesia' ? 'Simpan' : 'Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
