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
//--------------------------------------------------------------------
//--------------------------------------------------------------------


// String title = jenisJerawat[Random().nextInt(5)].toString(); //disini ambil API hasil deteksi
// String title = 'Jerawat Blackhead'; //disini ambil API hasil deteksi
var jenisJerawat = /*if disini*/ [
  'Jerawat Blackhead',
  'Jerawat Nodules',
  'Jerawat Papules',
  'Jerawat Pustules',
  'Jerawat Whitehead',
];
var desc = [
  'Jerawat Blackhead',
  'Jerawat Nodules',
  'Jerawat Papules',
  'Jerawat Pustules',
  'Jerawat Whitehead',
];
// var dateSementara = '';
// int historyCount = 0;
//--------------------------------------------------------------------
//Recomendation product model
var recomendation = [
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

//--------------------------------------------------------------------
// String Navbar Page
List<String> titleNavBar_id = ['Home', 'Acne', 'History', 'Profile'];

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
List<Widget> destPage = [Home(), Acne(), History(), Profile()];
//--------------------------------------------------------------------
//State Manajement edit
StateM create(BuildContext c) => c.read<StateM>();
//--------------------------------------------------------------------
//State Manajement lihat
StateM read(BuildContext c) => c.watch<StateM>();

//--------------------------------------------------------------------
// List untuk ganti gambar profile
List<String> imgProfile_id = [
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
String imgAcneLight_id = 'assets/acne_vec.png', imgAcneDark_id = 'assets/acneDark_vec.png';
//--------------------------------------------------------------------
// String Home Page
String imgMaskotHome_id = 'assets/sliver_image.png';
