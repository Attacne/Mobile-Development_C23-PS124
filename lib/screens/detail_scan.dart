import 'dart:io';
import 'dart:math';

import 'package:attacne/services/variabels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../databases/database_instance.dart';
import '../services/colors.dart';
import '../services/strings_en.dart';
import '../services/strings_id.dart';
import '../widgets/loading.dart';
import '../widgets/widgets.dart';
import 'nav_bar.dart';

class DetailScan extends StatefulWidget {
  String? image;

  DetailScan(this.image);

  @override
  State<DetailScan> createState() => _DetailScanState();
}

class _DetailScanState extends State<DetailScan> {
  final index = Random().nextInt(5);

  @override
  void initState() {
    super.initState();
    db.database();
    setState(() {});
  }

  @override
  Widget build(BuildContext c) {
    var title = jenisAcne[index];
    var desc = '';

    for (int i = 0; i < jenisAcne.length; i++) {
      if (title == jenisAcne[i]) {
        desc = desk[i];
      }
    }
    Widget btnSave({required bool save}) {
      return Container(
        color: Cw,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: C1,
            shape: RoundedRectangleBorder(borderRadius: rounded(10)),
          ),
          onPressed: () async {
            await db.insert({
              'image': widget.image,
              'title': title,
              'desc': desc,
              'date': 'Date: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}, '
                  'at ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} ${DateTime.now().timeZoneName}',
            });
            create(c).setIsLoadingToDB(); //ubah tampilan loading
            await Future.delayed(Duration(seconds: 1));
            create(c).setIsLoadingToDB(); //hilangkan tampilan loading
            await Future.delayed(Duration(milliseconds: 500));
            Navigator.pop(context, true);
          },
          child: Text(read(c).fixedLang == 'Indonesia' ? saveDetailScan_id : saveDetailScan_en, style: TextStyle(fontSize: 20)),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    elevation: 5,
                    pinned: true,
                    backgroundColor: read(c).fixTheme ? C1 : C3,
                    expandedHeight: size(c).width,
                    title:
                        // Text('${widget.image}', style: TextStyle(color: Colors.black)),
                        Text(read(c).fixedLang == 'Indonesia' ? detailScanHead_id : detailScanHead_en),
                    flexibleSpace: FlexibleSpaceBar(
                      background: widget.image != null
                          ? Container(
                              decoration: BoxDecoration(
                                color: read(c).fixTheme ? Cw : C2,
                                image: DecorationImage(image: FileImage(File(widget.image!)), fit: BoxFit.cover),
                              ),
                            )
                          : Container(color: read(c).fixTheme ? C1 : C2, child: Center(child: CircularProgressIndicator())),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext c, int index) {
                        return Container(
                          decoration: BoxDecoration(color: read(c).fixTheme ? Cw : C2),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(height: 10, width: 10),
                                    Text(title, style: TextStyle(color: C1, fontSize: 30, fontWeight: bold)),
                                    Text(desc, style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 17), textAlign: TextAlign.justify),
                                    Container(height: 100),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      childCount: 1,
                    ),
                  ),
                ],
              ),
            ),
            read(c).loadingToDB ? Loading() : Container()
          ],
        ),
      ),
      bottomNavigationBar: read(c).loadingToDB ? null : btnSave(save: true),
    );
  }
}
