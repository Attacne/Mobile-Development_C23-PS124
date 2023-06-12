import 'dart:io';

class ScanHistoryModel {
  //producht
  int? id;
  String? title;//nama jerawat
  String? desc;//deskripsi
  String? date;

  ScanHistoryModel({this.id, this.title, this.desc, this.date});

  factory ScanHistoryModel.fromJson(Map<String, dynamic> json) {
    return ScanHistoryModel(
      id: json['id'],
      title: json['title'],
      desc: json['desc'],
      date: json['date'],
    );
  }
}
