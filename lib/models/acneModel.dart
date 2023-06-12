import 'dart:io';

import 'package:flutter/material.dart';

// model untuk di tampilkan di listview horizontal halaman home
class AcneInfo {
  String illustration, acneName, acneDesc;
  List<String> imgAcne = [];

  AcneInfo({required this.illustration, required this.acneName, required this.acneDesc, required this.imgAcne});
}
