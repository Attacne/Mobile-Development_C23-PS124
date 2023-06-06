import 'dart:io';
import 'dart:math';

import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/screens/profile.dart';
import 'package:attacne/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//--------------------------------------------------------------------
var bold = FontWeight.bold;
var rounded = BorderRadius.circular;

//--------------------------------------------------------------------
// String Navbar Page
List<String> titleNavBar = [
  'Home',
  'Acne',
  'History',
  'Profile',
];

//--------------------------------------------------------------------
//List untuk icon Navbar
List<IconData> icon = [
  Icons.home_rounded,
  Icons.face_retouching_natural_rounded,
  Icons.history_rounded,
  Icons.person_rounded,
];

//--------------------------------------------------------------------
//List untuk Navigasi Navbar
List<Widget> destPage = [
  Home(),
  Acne(),
  History(),
  Profile(),
];

//--------------------------------------------------------------------
//State Manajement edit
StateM create(BuildContext c) => c.read<StateM>();

//--------------------------------------------------------------------
//State Manajement lihat
StateM read(BuildContext c) => c.watch<StateM>();

//--------------------------------------------------------------------
// List untuk ganti gambar profile
List<String> imgProfile = [
  'assets/attacne_logo.png',
  'assets/Card 1.png',
  'assets/Card 2.png',
  'assets/Card 3.png',
  'assets/Card 4.png',
  'assets/Card 5.png',
  'assets/Card 6.png',
];

//--------------------------------------------------------------------
// String Acne Page
String imgAcneLight = 'assets/acne_vec.png', imgAcneDark = 'assets/acneDark_vec.png';

//--------------------------------------------------------------------
// String Home Page
String imgMaskotHome = 'assets/sliver_image.png';
