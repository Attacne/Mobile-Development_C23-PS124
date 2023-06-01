import 'dart:io';

import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DetailScanHistory extends StatelessWidget {
  File? img;
  String? date;
  String? title;
  String? desc;

  DetailScanHistory(this.img, this.date, this.title, this.desc);

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: C1,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 5,
              pinned: true,
              backgroundColor: C1,
              expandedHeight: size(c).width,
              title: Text('Detail'),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: FileImage(img!), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 55),
                    decoration:
                        BoxDecoration(color: read(c).fixTheme ? Cw : C2),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(height: 10, width: 10),
                            Text(
                              title!,
                              style: TextStyle(color: C1, fontSize: 30),
                            ),
                            Text(
                              desc!,
                              style: TextStyle(
                                color: read(c).fixTheme ? Cb : Cw,
                                fontSize: 17,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            Container(height: 100),
                            Text(
                              'Rekomendasi Produk',
                              style: TextStyle(
                                  color: C1, fontSize: 30, fontWeight: bold),
                            ),
                          ],
                        ),
                        Container(
                          height: 300,
                          width: size(c).width,
                          child: ListView.builder(
                            itemCount: imgInfo_id.length,
                            padding: EdgeInsets.zero,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext c, int i) =>
                                card(c, imgInfo_id[i]!, titleInfo_id[i]!, null),
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
      extendBody: true,
    );
  }
}
