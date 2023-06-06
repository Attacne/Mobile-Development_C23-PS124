import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/login.dart';
import 'package:attacne/screens/nav_bar.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/provider.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

// menampilkan dialog untuk exit(menghapus lapisan teratas)
Future showMyDialogExit(BuildContext c, String info) {
  return showDialog(
    context: c,
    builder: (c) => AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: rounded(20)),
      content: Text(info,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center),
      actions: [
        TextButton(onPressed: () => closeDialog(c, true), child: Text(read(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes')),
        TextButton(onPressed: () => closeDialog(c, false), child: Text(read(c).fixedLang == 'Indonesia' ? 'Tidak' : 'No')),
      ],
    ),
  );
}

String? sementara1, sementara2, sementara3;

Widget textFormField(
  BuildContext c,
  String label, {
  String text = '',
  bool isPass = false,
  TextInputType type = TextInputType.text,
}) {
  return TextFormField(
    onChanged: (value) {
      switch (label) {
        case 'Username':
          sementara1 = value;
          break;
        case 'Email Address':
          sementara2 = value;
          break;
        case 'New Password':
          // sementara3 == value;
          break;
      }
    },
    style: TextStyle(fontSize: 18, color: read(c).fixTheme ? Cb : Cw),
    // autofocus: false,
    keyboardType: type,
    obscureText: isPass
        ? read(c).isHidePass
            ? true
            : false
        : isPass,
    // controller: TextEditingController(text: text),
    initialValue: text,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
      suffix: isPass == true
          ? GestureDetector(
              onTap: () => create(c).passSet(),
              child: Icon(
                (read(c).isHidePass) ? Icons.visibility_off : Icons.visibility,
                color: (read(c).isHidePass) ? Cw.withOpacity(.5) : C1,
                // size: 18,
              ),
            )
          : null,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: C1),
        borderRadius: rounded(10),
      ),
      border: OutlineInputBorder(
        borderRadius: rounded(10),
        borderSide: BorderSide(color: C1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: rounded(10),
        borderSide: BorderSide(color: C1),
      ),
      labelStyle: TextStyle(fontSize: 18, color: C1),
      labelText: label,
    ),
  );
}
