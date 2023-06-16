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
      shape: RoundedRectangleBorder(borderRadius: rounded(10)),
      content: Text(info,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center),
      actions: [
        TextButton(onPressed: () => closeDialog(c, true), child: Text(Watch(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes')),
        TextButton(onPressed: () => closeDialog(c, false), child: Text(Watch(c).fixedLang == 'Indonesia' ? 'Tidak' : 'No')),
      ],
    ),
  );
}
