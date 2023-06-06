import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/screens/detail_info.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/provider.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/cardExtended.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isTapped1 = true, isExpanded1 = false;
  bool isTapped2 = true, isExpanded2 = false;

  @override
  Widget build(BuildContext c) {
    CardExtended card0 = read(c).fixedLang == 'Indonesia' ? CardExtended(headCardHome_id[0], titleCardHome_id[0]) : CardExtended(headCardHome_en[0], titleCardHome_en[0]);
    CardExtended card1 = read(c).fixedLang == 'Indonesia' ? CardExtended(headCardHome_id[1], titleCardHome_id[1]) : CardExtended(headCardHome_en[1], titleCardHome_en[1]);
    CardExtended card2 = read(c).fixedLang == 'Indonesia' ? CardExtended(headCardHome_id[2], titleCardHome_id[2]) : CardExtended(headCardHome_en[2], titleCardHome_en[2]);
    CardExtended card3 = read(c).fixedLang == 'Indonesia' ? CardExtended(headCardHome_id[3], titleCardHome_id[3]) : CardExtended(headCardHome_en[3], titleCardHome_en[3]);
    CardExtended card4 = read(c).fixedLang == 'Indonesia' ? CardExtended(headCardHome_id[4], titleCardHome_id[4]) : CardExtended(headCardHome_en[4], titleCardHome_en[4]);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark),
          ),
          SafeArea(
            bottom: false,
            child: ScrollConfiguration(
              behavior: MaterialScrollBehavior().copyWith(overscroll: false),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    expandedHeight: 220.0,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                      title: Text(
                        appName,
                        style: TextStyle(color: Cw, fontSize: size(c).width * .08),
                      ),
                      background: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          alignment: Alignment.centerRight,
                          imgMaskotHome,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext c, int index) => Container(
                        padding: EdgeInsets.only(
                          bottom: 55 + (size(c).width * .05),
                        ),
                        decoration: BoxDecoration(
                          color: read(c).fixTheme ? Cw : C2,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 20, top: 10),
                              height: 3,
                              width: size(c).width * .2,
                              decoration: BoxDecoration(
                                color: read(c).fixTheme ? Cb.withOpacity(.5) : Cw.withOpacity(.5),
                                borderRadius: rounded(5),
                              ),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Text(
                                  read(c).fixedLang == 'Indonesia' ? subHead1Home_id : subHead1Home_en,
                                  style: TextStyle(color: read(c).fixTheme ? C1 : Cw, fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              margin: const EdgeInsets.only(bottom: 40),
                              height: 260,
                              width: size(c).width,
                              child: ListView.builder(
                                itemCount: 5,
                                padding: EdgeInsets.zero,
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext c, int i) {
                                  return card(
                                    c,
                                    (read(c).fixedLang == 'Indonesia' ? acneInfoData_id : acneInfoData_en)[i].illustration,
                                    (read(c).fixedLang == 'Indonesia' ? acneInfoData_id : acneInfoData_en)[i].acneName,
                                    dest: DetailInfo((read(c).fixedLang == 'Indonesia' ? acneInfoData_id : acneInfoData_en)[i]),
                                  );
                                },
                              ),
                            ),
                            Row(
                              children: [
                                const SizedBox(width: 10, height: 20),
                                Text(
                                  read(c).fixedLang == 'Indonesia' ? subHead2Home_id : subHead2Home_en,
                                  style: TextStyle(color: read(c).fixTheme ? C1 : Cw, fontSize: 20, fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            card0,
                            card1,
                            card2,
                            card3,
                            card4,
                          ],
                        ),
                      ),
                      childCount: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
