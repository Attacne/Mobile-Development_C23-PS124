import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/models/acneModel.dart';
import 'package:attacne/screens/detail_scan_history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext c) {
// menampilkan dialog keluar
    Future showMyDialog() {
      return showDialog(
        context: c,
        builder: (c) => AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: rounded(20)),
          content: Text(read(c).fixedLang == 'Indonesia' ? dgDeleteHistroy_id : dgDeleteHistroy_en, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: bold), textAlign: TextAlign.center),
          actions: [
            TextButton(
              onPressed: () {
                // historyCount = 0;
                listHistoryScan = []; // historyCount=0;
                closeDialog(c, true);
              },
              child: Text(read(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes'),
            ),
            TextButton(onPressed: () => closeDialog(c, false), child: Text(read(c).fixedLang == 'Indonesia' ? 'Tidak' : 'No')),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(decoration: read(c).fixTheme ? BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark) : BoxDecoration(color: C3)),
        title: Text(read(c).fixedLang == 'Indonesia' ? historyHead_id : historyHead_en, style: TextStyle(color: Cw, fontSize: 25)),
        actions: [
          IconButton(
            onPressed: () async {
              listHistoryScan.isEmpty ? null : await showMyDialog();
              setState(() {});
              // print('hapus');
            },
            icon: Icon(Icons.delete, color: Cw),
            splashRadius: 1,
          )
        ],
      ),
      backgroundColor: read(c).fixTheme ? Cw : C2,
      body: listHistoryScan.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.history_rounded, color: C1, size: 150),
                  Text(
                    read(c).fixedLang == 'Indonesia' ? infoHistory_id : infoHistory_en,
                    style: TextStyle(color: C1, fontWeight: bold, fontSize: 20),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemCount: listHistoryScan.length,
              itemBuilder: ((contex, index) {
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: rounded(10)),
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  color: read(contex).fixTheme ? Cw : C3,
                  elevation: 3,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () => open(contex, DetailScanHistory(listModel: listHistoryScan[index])),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: rounded(10),
                            child: Image.file(listHistoryScan[index].imgScan!, fit: BoxFit.cover),
                          ),
                        ),
                        Container(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              listHistoryScan[index].hasilScan!,
                              style: TextStyle(color: read(contex).fixTheme ? Cb : Cw, fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: size(contex).width * .5,
                              margin: EdgeInsets.only(top: 10),
                              height: 50,
                              // color: Colors.red,
                              child: Text(
                                listHistoryScan[index].tanggalScan!,
                                style: TextStyle(color: read(contex).fixTheme ? Cb : Cw, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
    );
  }
}
