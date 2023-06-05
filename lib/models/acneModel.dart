import 'dart:io';

import 'package:flutter/material.dart';

class AcneInfo {
  String illustration, acneName, acneDesc;
  List<String> imgAcne = [];

  AcneInfo({
    required this.illustration,
    required this.acneName,
    required this.acneDesc,
    required this.imgAcne,
  });
}

class HistoryScan {
  String hasilScan, deskHasilScan, tanggalScan;
  File? imgScan;
  List<List<String>> rekomendasiProduk;

  HistoryScan({
    required this.hasilScan,
    required this.deskHasilScan,
    required this.tanggalScan,
    required this.imgScan,
    required this.rekomendasiProduk,
  });
}
