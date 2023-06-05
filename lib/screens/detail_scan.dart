import 'dart:io';

import 'package:attacne/screens/history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:attacne/screens/acne.dart';

class DetailScan extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? C1 : C3,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 5,
              pinned: true,
              backgroundColor: read(c).fixTheme ? C1 : C3,
              expandedHeight: size(c).width,
              title: Text(detailScanHead_id),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: read(c).fixTheme ? Cw : C2,
                    image: DecorationImage(image: FileImage(image!), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext c, int index) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 55),
                    decoration: BoxDecoration(color: read(c).fixTheme ? Cw : C2),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 10, width: 10),
                            Text(
                              titleS_id,
                              style: TextStyle(color: C1, fontSize: 30, fontWeight: bold),
                            ),
                            Text(
                              desc_id,
                              style: TextStyle(
                                color: read(c).fixTheme ? Cb : Cw,
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Container(height: 100),
                            Text(
                              subHeadDetailScan_id,
                              style: TextStyle(color: C1, fontSize: 30),
                            ),
                          ],
                        ),
                        Container(
                          height: 300,
                          width: size(c).width,
                          child: ListView.builder(
                            itemCount: imgRecProd_id.length,
                            padding: EdgeInsets.zero,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext c, int i) => card(c, imgRecProd_id[i]!, prodName_id[i]!),
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
      bottomNavigationBar: Container(
        height: 80,
        color: read(c).fixTheme ? Cw : C2,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              btnSave(c, btn1DetailScan_id),
              btnSave(c, btn2DetailScan_id),
            ],
          ),
        ),
      ),
    );
  }
}
