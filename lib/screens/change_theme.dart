import 'package:attacne/services/colors.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        title: Text('Theme'),
        flexibleSpace: Container(
          width: size(c).width,
          decoration: BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark)
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RadioListTile(
              title: Text(
                'LightTheme',
                style: TextStyle(color: read(c).fixTheme ? C2 : Cw),
              ),
              value: 'LightTheme',
              groupValue: read(c).selectedTheme,
              onChanged: (value) => create(c).setSelectedTheme(value!),
            ),
            RadioListTile(
              title: Text(
                'DarkTheme',
                style: TextStyle(color: read(c).fixTheme ? C2 : Cw),
              ),
              value: 'DarkTheme',
              groupValue: read(c).selectedTheme,
              onChanged: (value) => create(c).setSelectedTheme(value!),
            ),
            RadioListTile(
              title: Text(
                'System',
                style: TextStyle(color: read(c).fixTheme ? C2 : Cw),
              ),
              value: 'System',
              groupValue: read(c).selectedTheme,
              onChanged: (value) => create(c).setSelectedTheme(value!),
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
                  create(c).setFixedTheme(c);
                },
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
