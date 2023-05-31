import 'dart:io';

import 'package:attacne/screens/history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:attacne/screens/acne.dart';

class DetailInfo extends StatelessWidget {
  String? img, title, desc;

  DetailInfo(this.img, this.title, this.desc);

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
              title: Text(detailInfoHead_id),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                    color: C1,
                    image: DecorationImage(
                        image: AssetImage(img!), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 55),
                    decoration: BoxDecoration(color: Cw),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 10),
                        Text(
                          title!,
                          style: TextStyle(
                              color: C1, fontSize: 30, fontWeight: bold),
                        ),
                        Text(
                          desc!,
                          style: TextStyle(
                            color: Cb,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        Container(height: size(c).width),
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