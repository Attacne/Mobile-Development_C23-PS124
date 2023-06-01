import 'dart:io';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: read(c).fixTheme
              ? BoxDecoration(gradient: gradient)
              : BoxDecoration(color: C3),
        ),
        title: Text('History', style: TextStyle(color: Cw, fontSize: 25)),
        actions: [
          IconButton(
            onPressed: () async {
              imgScan.isEmpty
                  ? null
                  : await showMyDialog(c, dgDeleteHistroy_id);
              setState(() {});
            },
            icon: Icon(Icons.delete, color: Cw),
            splashRadius: 25,
          )
        ],
      ),
      backgroundColor: read(c).fixTheme ? Cw : C2,
      body: imgScan.isEmpty
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
              itemCount: imgScan.length,
              itemBuilder: ((c, i) => cardHistory(
                    c,
                    titleScan[i]!,
                    imgScan[i]!,
                    dateScan[i]!,
                    descScan[i]!,
                  )),
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
            ),
    );
  }
}
