import 'dart:io';

import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/screens/profile.dart';
import 'package:attacne/services/state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var bold = FontWeight.bold;
var rounded = BorderRadius.circular;
File? image;
List<File?> imgScan = [];

List<String?> dateScan = [];

List<String?> titleScan = [];

List<String?> descScan = [];

List<IconData> icon = [
  Icons.home_rounded,
  Icons.face_retouching_natural_rounded,
  Icons.history_rounded,
  Icons.person_rounded,
];

List<Widget> destPage = [Home(), Acne(), History(), Profile()];

StateM create(BuildContext c) => c.read<StateM>();
StateM read(BuildContext c) => c.watch<StateM>();
