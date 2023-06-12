import 'dart:io';

import 'package:attacne/models/scan_history_model.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:flutter/material.dart';
import 'package:attacne/models/acneModel.dart';

//--------------------------------------------------------------------
// Adapter untuk AcneInfoModel
List<AcneInfo> acneInfoData_id = List.generate(5, (index) {
  List<String> _illustration = [
    "assets/Blackhead.png",
    "assets/Nodules.png",
    "assets/Papules.png",
    "assets/Pustules.png",
    "assets/Whitehead.png",
  ];
  return AcneInfo(
    illustration: _illustration[index],
    acneName: nameAcneInfo_id[index],
    acneDesc: descAcneInfo_id[index],
    imgAcne: _acneImg[index],
  );
});
List<AcneInfo> acneInfoData_en = List.generate(5, (index) {
  List<String> _illustration = [
    "assets/Blackhead.png",
    "assets/Nodules.png",
    "assets/Papules.png",
    "assets/Pustules.png",
    "assets/Whitehead.png",
  ];
  return AcneInfo(
    illustration: _illustration[index],
    acneName: nameAcneInfo_en[index],
    acneDesc: descAcneInfo_en[index],
    imgAcne: _acneImg[index],
  );
});
var _acneImg = [
  [
    "assets/Blackhead (1).jpg",
    "assets/Blackhead (2).jpg",
    "assets/Blackhead (3).jpg",
    "assets/Blackhead (4).jpg",
    "assets/Blackhead (5).jpg",
  ],
  [
    "assets/Nodules (1).jpg",
    "assets/Nodules (2).jpg",
    "assets/Nodules (3).jpg",
    "assets/Nodules (4).jpg",
    "assets/Nodules (5).jpg",
  ],
  [
    "assets/Papules (1).jpg",
    "assets/Papules (2).jpg",
    "assets/Papules (3).jpg",
    "assets/Papules (4).jpg",
    "assets/Papules (5).jpg",
  ],
  [
    "assets/Pustules (1).jpg",
    "assets/Pustules (2).jpg",
    "assets/Pustules (3).jpg",
    "assets/Pustules (4).jpg",
    "assets/Pustules (5).jpg",
  ],
  [
    "assets/Whitehead (1).jpg",
    "assets/Whitehead (2).jpg",
    "assets/Whitehead (3).jpg",
    "assets/Whitehead (4).jpg",
    "assets/Whitehead (5).jpg",
  ]
];

//--------------------------------------------------------------------
//--------------------------------------------------------------------
//--------------------------------------------------------------------
// Adapter untuk AcneInfoModel

List<ScanHistoryModel> listHistoryScan = [];
