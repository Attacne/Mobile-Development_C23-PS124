import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/models/acneModel.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../models/scan_history_model.dart';

class DetailScanHistory extends StatelessWidget {
  ScanHistoryModel listModel;

  DetailScanHistory({required this.listModel});

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Watch(c).fixTheme ? Cw : C3,
      body: SafeArea(
        top: false,
        child: ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 5,
                pinned: true,
                backgroundColor: Watch(c).fixTheme ? C1 : C3,
                expandedHeight: size(c).width,
                title: Text(Watch(c).fixedLang == 'Indonesia' ? detailScanHead_id : detailScanHead_en),
                flexibleSpace: FlexibleSpaceBar(
                  background: listModel.image != null
                      ? Container(
                          decoration: BoxDecoration(
                            color: Watch(c).fixTheme ? Cw : C2,
                            image: DecorationImage(image: FileImage(File(listModel.image!)), fit: BoxFit.cover),
                          ),
                        )
                      : Container(color: Watch(c).fixTheme ? C1 : C2, child: Center(child: CircularProgressIndicator())),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(color: Watch(c).fixTheme ? Cw : C2),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(height: 10, width: 10),
                                Text(
                                  listModel.title!,
                                  style: TextStyle(color: C1, fontSize: 30),
                                ),
                                Text(
                                  listModel.desc!,
                                  style: TextStyle(
                                    color: Watch(c).fixTheme ? Cb : Cw,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                Container(height: 100),
                                /*Text(
                                  read(c).fixedLang == 'Indonesia' ? rekomendasiProdukHasilScan_id : rekomendasiProdukHasilScan_en,
                                  style: TextStyle(color: C1, fontSize: 30, fontWeight: bold),
                                ),*/
                              ],
                            ),
                          ),
                          // Rekomendasi Produk
                          /*Container(
                            height: 260,
                            width: size(c).width,
                            child: ListView.builder(
                              itemCount: 5,
                              padding: EdgeInsets.zero,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext c, int i) => card(
                                c,
                                listModel['rekomendasiProduk'][i][0],
                                listModel['rekomendasiProduk'][i][1],
                              ),
                            ),
                          ),*/
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
      ),
      extendBody: true,
    );
  }
}
