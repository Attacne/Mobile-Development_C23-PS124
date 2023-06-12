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
  List<Map<String, dynamic>> _scanHistoryList = [];

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
            shape: RoundedRectangleBorder(borderRadius: rounded(20)),
            content: Text(
              read(c).fixedLang == 'Indonesia' ? dgDeleteHistroy_id : dgDeleteHistroy_en,
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
                child: Text(read(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes'),
              ),
              TextButton(onPressed: () => closeDialog(c, false), child: Text(read(c).fixedLang == 'Indonesia' ? 'Tidak' : 'No')),
            ],
          ),
        );
    bool dbNotEmpty = false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(decoration: read(c).fixTheme ? BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark) : BoxDecoration(color: C3)),
        title: Text(read(c).fixedLang == 'Indonesia' ? historyHead_id : historyHead_en, style: TextStyle(color: Cw, fontSize: 25)),
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
      backgroundColor: read(c).fixTheme ? Cw : C2,
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
                          read(c).fixedLang == 'Indonesia' ? infoHistory_id : infoHistory_en,
                          style: TextStyle(color: C1, fontWeight: bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                );
              }
              return ListView.builder(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (c, i) {
                    dbNotEmpty = snapshot.data!.isNotEmpty;
                    print('${snapshot.data![i].id}');
                    print('${snapshot.data![i].title}');
                    print('${snapshot.data![i].desc}');
                    print('${snapshot.data![i].date}');
                    return Card(
                      shape: RoundedRectangleBorder(borderRadius: rounded(10)),
                      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      color: read(c).fixTheme ? Cw : C3,
                      elevation: 3,
                      child: InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          open(c, DetailScanHistory(listModel: snapshot.data![i]));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: 150,
                              color: Colors.grey,
                            ),
                            Container(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  snapshot.data![i].title!,
                                  style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 22, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  width: size(c).width * .5,
                                  margin: EdgeInsets.only(top: 10),
                                  height: 50,
                                  // color: Colors.red,
                                  child: Text(
                                    snapshot.data![i].date!,
                                    style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator(color: C1));
            }
          },
        ),
      ),
    );
  }
}
