import 'dart:io';

import 'package:attacne/models/acneModel.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:attacne/screens/acne.dart';

class DetailInfo extends StatelessWidget {
  AcneInfo model;

  DetailInfo(this.model);

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Watch(c).fixTheme ? Cw : C3,
      body: Stack(
        children: [
          Container(
            height: size(c).height,
            width: size(c).width,
            decoration: BoxDecoration(gradient: Watch(c).fixTheme ? gradientLight : gradientDark),
          ),
          SafeArea(
            child: ScrollConfiguration(
              behavior: MaterialScrollBehavior().copyWith(overscroll: false),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    elevation: 5,
                    // pinned: true,
                    // backgroundColor: read(c).fixTheme ? C1 : C3,
                    backgroundColor: Colors.transparent,
                    expandedHeight: 350,
                    title: Text(model.acneName),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                        // height: 350,
                        margin: EdgeInsets.fromLTRB(50, 60, 50, 30),
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(model.illustration), fit: BoxFit.fitHeight),
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Watch(c).fixTheme ? Cw : C2,
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
                                decoration: BoxDecoration(borderRadius: rounded(50), color: Watch(c).fixTheme ? C1 : C3),
                              ),
                              Container(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  model.acneDesc,
                                  style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw, fontSize: 17),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              Container(
                                // margin: const EdgeInsets.only(bottom: 40),
                                height: size(c).width * .90,
                                width: size(c).width,
                                child: ListView.builder(
                                  itemCount: 5,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext c, int i) {
                                    return Container(
                                      width: size(c).width * .85,
                                      margin: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: rounded(30),
                                        color: Watch(c).fixTheme ? Cw : C3,
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
          ),
        ],
      ),
      extendBody: true,
    );
  }
}
