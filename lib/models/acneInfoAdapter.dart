import 'package:attacne/services/strings_id.dart';
import 'package:flutter/material.dart';
import 'package:attacne/models/acneInfoModel.dart';

List<AcneInfoModel> dummyAcne = List.generate(5, (index) {
  List<String> illustration = [
    "assets/Blackhead.png",
    "assets/Nodules.png",
    "assets/Papules.png",
    "assets/Pustules.png",
    "assets/Whitehead.png",
  ];
  return AcneInfoModel(
    illustration: illustration[index],
    acneName: acneJudul[index],
    acneDesc: acneDesk[index],
    imgAcne: acneImg[index],
  );
});
var acneImg = [
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
var acneJudul = nameAcneInfo_id;
var acneDesk = descAcneInfo_id;
