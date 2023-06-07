import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/models/acneModel.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailScanHistory extends StatelessWidget {
  HistoryScan listModel;

  DetailScanHistory({required this.listModel});

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? C1 : C3,
      body: SafeArea(
        bottom: false,
        child: ScrollConfiguration(
          behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 5,
                pinned: true,
                backgroundColor: read(c).fixTheme ? C1 : C3,
                expandedHeight: size(c).width,
                title: Text(read(c).fixedLang == 'Indonesia' ? detailScanHead_id : detailScanHead_en),
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: FileImage(listModel.imgScan!), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
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
                                Text(
                                  listModel.hasilScan,
                                  style: TextStyle(color: C1, fontSize: 30),
                                ),
                                Text(
                                  listModel.deskHasilScan,
                                  style: TextStyle(
                                    color: read(c).fixTheme ? Cb : Cw,
                                    fontSize: 17,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                Container(height: 100),
                                Text(
                                  read(c).fixedLang == 'Indonesia' ? rekomendasiProdukHasilScan_id : rekomendasiProdukHasilScan_en,
                                  style: TextStyle(color: C1, fontSize: 30, fontWeight: bold),
                                ),
                              ],
                            ),
                          ),
                          // Rekomendasi Produk
                          Container(
                            height: 260,
                            width: size(c).width,
                            child: ListView.builder(
                              itemCount: 5,
                              padding: EdgeInsets.zero,
                              physics: const BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext c, int i) => card(
                                c,
                                listModel.rekomendasiProduk[i][0],
                                listModel.rekomendasiProduk[i][1],
                              ),
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
      ),
      extendBody: true,
    );
  }
}
