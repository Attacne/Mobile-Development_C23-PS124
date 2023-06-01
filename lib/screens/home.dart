import 'package:attacne/screens/detail_info.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/provider.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
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

  Padding cardExtend1(BuildContext c, String h1, String h2) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () => setState(() => isTapped1 = !isTapped1),
          onHighlightChanged: (value) => setState(() => isExpanded1 = value),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            height: isTapped1
                ? isExpanded1
                    ? 65
                    : 70
                : isExpanded1
                    ? 285
                    : 350,
            width: isExpanded1 ? 385 : 390,
            decoration: read(c).fixTheme
                ? BoxDecoration(gradient: gradient, borderRadius: rounded(20))
                : BoxDecoration(color: C3, borderRadius: rounded(20)),
            padding: const EdgeInsets.all(20),
            child: isTapped1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(h1, style: TextStyle(color: Cw, fontSize: 22)),
                          Icon(
                            isTapped1
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            color: Cw,
                            size: 27,
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            h1,
                            style: TextStyle(color: Cw, fontSize: 22),
                          ),
                          Icon(
                            isTapped1
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            color: Cw,
                            size: 27,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        isTapped1 ? '' : h2,
                        style: TextStyle(
                          color: Cw.withOpacity(0.9),
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
          ),
        ),
      );

  Padding cardExtend2(BuildContext c, String h1, String h2) => Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () => setState(() => isTapped2 = !isTapped2),
          onHighlightChanged: (value) => setState(() => isExpanded2 = value),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.fastLinearToSlowEaseIn,
            height: isTapped2
                ? isExpanded2
                    ? 65
                    : 70
                : isExpanded2
                    ? 285
                    : 350,
            width: isExpanded2 ? 385 : 390,
            decoration: read(c).fixTheme
                ? BoxDecoration(gradient: gradient, borderRadius: rounded(20))
                : BoxDecoration(color: C3, borderRadius: rounded(20)),
            padding: const EdgeInsets.all(20),
            child: isTapped2
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            h1,
                            style: TextStyle(color: Cw, fontSize: 22),
                          ),
                          Icon(
                            isTapped2
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            color: Cw,
                            size: 27,
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            h1,
                            style: TextStyle(color: Cw, fontSize: 22),
                          ),
                          Icon(
                            isTapped2
                                ? Icons.keyboard_arrow_down
                                : Icons.keyboard_arrow_up,
                            color: Cw,
                            size: 27,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        isTapped2 ? '' : h2,
                        style:
                            TextStyle(color: Cw.withOpacity(0.9), fontSize: 18),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
          ),
        ),
      );

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: 300, decoration: BoxDecoration(gradient: gradient)),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                expandedHeight: 220.0,
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                  title: Text(
                    appName_id,
                    style: TextStyle(color: Cw, fontSize: size(c).width * .08),
                  ),
                  background: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      alignment: Alignment.centerRight,
                      imgMaskotHome_id,
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
                              color: read(c).fixTheme ? Cb26 : Cw24,
                              borderRadius: rounded(5)),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            Text(
                              subHead1Home_id,
                              style: TextStyle(
                                color: read(c).fixTheme ? C1 : Cw,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 40),
                          height: 300,
                          width: size(c).width,
                          child: ListView.builder(
                            itemCount: imgInfo_id.length,
                            padding: EdgeInsets.zero,
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext c, int i) => card(
                              c,
                              imgInfo_id[i]!,
                              titleInfo_id[i]!,
                              DetailInfo(
                                imgInfo_id[i]!,
                                titleInfo_id[i]!,
                                descInfo_id[i],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            Text(
                              subHead2Home_id,
                              style: TextStyle(
                                color: read(c).fixTheme ? C1 : Cw,
                                fontSize: 25,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        cardExtend1(c, headCard1Home_id, titleCard1Home_id),
                        cardExtend2(c, headCard2Home_id, titleCard2Home_id),
                      ],
                    ),
                  ),
                  childCount: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
