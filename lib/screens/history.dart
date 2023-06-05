import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/models/acneModel.dart';
import 'package:attacne/screens/detail_scan_history.dart';
import 'package:attacne/services/colors.dart';
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
    Future showMyDialog(String info) {
      return showDialog(
        context: c,
        builder: (c) => AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: rounded(20)),
          content: Text(info, style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: bold), textAlign: TextAlign.center),
          actions: [
            TextButton(
              onPressed: () {
                // historyCount = 0;
                listHistoryScan = []; // historyCount=0;
                closeDialog(c, true);
              },
              child: const Text('yes'),
            ),
            TextButton(onPressed: () => closeDialog(c, false), child: const Text('no')),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(decoration: read(c).fixTheme ? BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark) : BoxDecoration(color: C3)),
        title: Text('${listHistoryScan.length}', style: TextStyle(color: Cw, fontSize: 25)),
        actions: [
          IconButton(
            onPressed: () async {
              setState(() {});
            },
            icon: Icon(Icons.refresh_rounded, color: Cw),
            splashRadius: 1,
          ),
          IconButton(
            onPressed: () async {
              await showMyDialog(dgDeleteHistroy_id);
              setState(() {});
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
                    infoHistory_id,
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
                        Container(height: 10, width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(listHistoryScan[index].hasilScan!, style: TextStyle(color: read(contex).fixTheme ? Cb : Cw, fontSize: 20)),
                            Container(
                              width: size(contex).width * .5,
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
