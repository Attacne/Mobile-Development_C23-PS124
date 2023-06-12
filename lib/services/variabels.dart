import 'dart:io';
import 'dart:math';

import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/screens/profile_settings.dart';
import 'package:attacne/services/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//--------------------------------------------------------------------
//--------------------------------------------------------------------
//Prepare
var jenisAcne = [
  'Blackhead',
  'Nodules',
  'Papules',
  'Pustules',
  'Whitehead',
];
var desk = [
  'Jerawat Anda bertipe Blackhead',
  'Jerawat Anda bertipe  Nodules',
  'Jerawat Anda bertipe  Papules',
  'Jerawat Anda bertipe  Pustules',
  'Jerawat Anda bertipe  Whitehead',
];
var recomendasi = [
  [
    ["assets/Card 1.png", 'Salep Blackhead'],
    ["assets/Card 2.png", 'Salep Blackhead'],
    ["assets/Card 3.png", 'Salep Blackhead'],
    ["assets/Card 4.png", 'Salep Blackhead'],
    ["assets/Card 5.png", 'Salep Blackhead'],
  ],
  [
    ["assets/Card 1.png", 'Salep Nodules'],
    ["assets/Card 2.png", 'Salep Nodules'],
    ["assets/Card 3.png", 'Salep Nodules'],
    ["assets/Card 4.png", 'Salep Nodules'],
    ["assets/Card 5.png", 'Salep Nodules']
  ],
  [
    ["assets/Card 1.png", 'Salep Papules'],
    ["assets/Card 2.png", 'Salep Papules'],
    ["assets/Card 3.png", 'Salep Papules'],
    ["assets/Card 4.png", 'Salep Papules'],
    ["assets/Card 5.png", 'Salep Papules']
  ],
  [
    ["assets/Card 1.png", 'Salep Pustules'],
    ["assets/Card 2.png", 'Salep Pustules'],
    ["assets/Card 3.png", 'Salep Pustules'],
    ["assets/Card 4.png", 'Salep Pustules'],
    ["assets/Card 5.png", 'Salep Pustules']
  ],
  [
    ["assets/Card 1.png", 'Salep Whitehead'],
    ["assets/Card 2.png", 'Salep Whitehead'],
    ["assets/Card 3.png", 'Salep Whitehead'],
    ["assets/Card 4.png", 'Salep Whitehead'],
    ["assets/Card 5.png", 'Salep Whitehead']
  ]
];

//--------------------------------------------------------------------
//--------------------------------------------------------------------

//--------------------------------------------------------------------
var bold = FontWeight.bold;
var rounded = BorderRadius.circular;

//--------------------------------------------------------------------
// String Navbar Page
List<String> titleNavBar = [
  'Home',
  'Acne',
  'History',
  'Setting',
];

//--------------------------------------------------------------------
//List untuk icon Navbar
List<IconData> icon = [
  Icons.home_rounded,
  Icons.face_retouching_natural_rounded,
  Icons.history_rounded,
  Icons.settings,
];

//--------------------------------------------------------------------
//List untuk Navigasi Navbar
List<Widget> destPage = [
  Home(),
  Acne(),
  History(),
  ProfileSettings(),
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
