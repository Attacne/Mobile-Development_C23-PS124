import 'dart:io';

import 'package:attacne/models/acneInfoModel.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:attacne/screens/acne.dart';

class DetailInfo extends StatelessWidget {
  AcneInfoModel model;

  DetailInfo(this.model);

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? C1 : C2,
      body: ScrollConfiguration(
        behavior: MaterialScrollBehavior().copyWith(overscroll: false),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 5,
              pinned: true,
              backgroundColor: read(c).fixTheme ? C1 : C2,
              expandedHeight: 350,
              title: Text(model.acneName),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: read(c).fixTheme ? C1 : C2,
                    image: DecorationImage(image: AssetImage(model.illustration), fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: read(c).fixTheme ? Cw : C3,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: size(c).width * .35),
                          decoration: BoxDecoration(borderRadius: rounded(50), color: C1),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            model.acneDesc,
                            style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 17),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Container(
                          // margin: const EdgeInsets.only(bottom: 40),
                          height: 310,
                          width: size(c).width,
                          child: ListView.builder(
                            itemCount: 5,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext c, int i) {
                              return Container(
                                width: 300,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: rounded(30),
                                  color: read(c).fixTheme ? Cw : C3,
                                  image: DecorationImage(image: AssetImage(model.imgAcne[i]), fit: BoxFit.cover),
                                ),
                              );
                            },
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
