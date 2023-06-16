import 'dart:io';

import 'package:attacne/databases/create.dart';
import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/models/acneModel.dart';
import 'package:attacne/models/scan_history_model.dart';
import 'package:attacne/screens/detail_scan_history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../databases/database_instance.dart';
import 'nav_bar.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  void initState() {
    super.initState();
    db.database();
    setState(() {});
  }

  @override
  Widget build(BuildContext c) {
    Future showMyDialog() => showDialog(
          context: c,
          builder: (c) => AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: rounded(10)),
            content: Text(
              Watch(c).fixedLang == 'Indonesia' ? dgDeleteHistroy_id : dgDeleteHistroy_en,
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () async {
                  await db.deleteAllData();
                  setState(() {});
                  closeDialog(c, true);
                },
                child: Text(Watch(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes'),
              ),
              TextButton(onPressed: () => closeDialog(c, false), child: Text(Watch(c).fixedLang == 'Indonesia' ? 'Tidak' : 'No')),
            ],
          ),
        );

    bool dbNotEmpty = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(decoration: Watch(c).fixTheme ? BoxDecoration(gradient: Watch(c).fixTheme ? gradientLight : gradientDark) : BoxDecoration(color: C3)),
        title: Text(Watch(c).fixedLang == 'Indonesia' ? historyHead_id : historyHead_en, style: TextStyle(color: Cw, fontSize: 25)),
        actions: [
          IconButton(
            onPressed: () async {
              dbNotEmpty == true ? await showMyDialog() : null;
              setState(() {});
            },
            icon: Icon(Icons.delete, color: Cw),
            splashRadius: 1,
          )
        ],
      ),
      backgroundColor: Watch(c).fixTheme ? Cw : C2,
      body: RefreshIndicator(
        onRefresh: () async => setState(() {}),
        child: FutureBuilder<List<ScanHistoryModel>>(
          future: db.all(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              if (snapshot.data!.isEmpty) {
                return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () => setState(() {}),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.history_rounded, color: C1, size: 150),
                        Text(
                          Watch(c).fixedLang == 'Indonesia' ? infoHistory_id : infoHistory_en,
                          style: TextStyle(color: C1, fontWeight: bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return Container(
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    itemCount: snapshot.data!.length,
                    // reverse: true,
                    itemBuilder: (c, i) {
                      dbNotEmpty = snapshot.data!.isNotEmpty;
                      final reversedIndex = snapshot.data!.length - 1 - i;
                      final item = snapshot.data![reversedIndex];
                      return Card(
                        shape: RoundedRectangleBorder(borderRadius: rounded(10)),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        color: Watch(c).fixTheme ? Cw : C3,
                        elevation: 3,
                        child: InkWell(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () {
                            open(c, DetailScanHistory(listModel: item));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: rounded(10),
                                  image: DecorationImage(image: FileImage(File(item.image!)), fit: BoxFit.cover),
                                ),
                              ),
                              Container(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    item.title!,
                                    style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw, fontSize: 22, fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    width: size(c).width * .5,
                                    margin: EdgeInsets.only(top: 10),
                                    height: 50,
                                    // color: Colors.red,
                                    child: Text(
                                      item.date!,
                                      style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              );
            } else {
              return Center(child: CircularProgressIndicator(color: C1));
            }
          },
        ),
      ),
    );
  }
}
