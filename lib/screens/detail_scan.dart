import 'dart:io';
import 'dart:math';

import 'package:attacne/models/acneModel.dart';
import 'package:attacne/screens/history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/loading.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:attacne/screens/acne.dart';

import '../models/acneAdapter.dart';

class DetailScan extends StatefulWidget {
  final File? _image;

  DetailScan(this._image);

  @override
  State<DetailScan> createState() => _DetailScanState();
}

class _DetailScanState extends State<DetailScan> {
  bool isLoading = false;
  String _description = '';

  List<List<String>> _recomended = [];

  String _tanggalSementara = '';

  // disini get API hasil deteksi
  String _title = '';

  @override
  Widget build(BuildContext c) {
    _title = (read(c).fixedLang == 'Indonesia' ? jenis_id : jenis_en)[Random().nextInt(5)];

    _tanggalSementara = read(c).fixedLang == 'Indonesia'
        ? 'Scan pada: '
            'Tanggal ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}, '
            'Jam ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} ${DateTime.now().timeZoneName}'
        : 'Scans on: '
            'Date ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}, '
            'at ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} ${DateTime.now().timeZoneName}';

    for (int i = 0; i < (read(c).fixedLang == 'Indonesia' ? jenis_id : jenis_en).length; i++) {
      if (_title == (read(c).fixedLang == 'Indonesia' ? jenis_id[i] : jenis_en[i])) {
        _description = (read(c).fixedLang == 'Indonesia' ? desk_id[i] : desk_en[i]);
        _recomended = (read(c).fixedLang == 'Indonesia' ? recomendasi_id[i] : recomendasi_en[i]);
      }
    }
    // button untuk save atau tidak
    Widget btnSave(BuildContext c, String btnIsSave, bool isSave) {
      return Container(
        height: size(c).width * .12,
        width: size(c).width * .3,
        decoration: isSave
            ? BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark, borderRadius: rounded(15))
            : BoxDecoration(
                border: Border.all(width: 3, color: read(c).fixTheme ? C1 : Cw.withOpacity(.5)),
                borderRadius: rounded(15),
              ),
        child: TextButton(
          onPressed: () async {
            if (isSave) {
              listHistoryScan.add(
                HistoryScan(imgScan: widget._image, hasilScan: _title, deskHasilScan: _description, tanggalScan: _tanggalSementara, rekomendasiProduk: _recomended),
              );
            }
            setState(() => isLoading = !isLoading); //ubah tampilan loading
            await Future.delayed(Duration(seconds: 3));
            setState(() => isLoading = !isLoading); //hilangkan tampilan loading
            await Future.delayed(Duration(milliseconds: 300));
            close(c);
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: rounded(10)),
          ),
          child: Text(
            btnIsSave,
            style: TextStyle(
              color: isSave
                  ? read(c).fixTheme
                      ? Cw
                      : Cw.withOpacity(.5)
                  : read(c).fixTheme
                      ? C1
                      : Cw.withOpacity(.5),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: read(c).fixTheme ? C1 : C3,
      body: SafeArea(
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: MaterialScrollBehavior().copyWith(overscroll: false),
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
                          color: read(c).fixTheme ? Cw : C2,
                          image: DecorationImage(image: FileImage(widget._image!), fit: BoxFit.cover),
                        ),
                      ),
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
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 55),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(height: 10, width: 10),
                                    Text(
                                      _title,
                                      style: TextStyle(color: C1, fontSize: 30, fontWeight: bold),
                                    ),
                                    Text(
                                      _description,
                                      style: TextStyle(
                                        color: read(c).fixTheme ? Cb : Cw,
                                        fontSize: 17,
                                      ),
                                      textAlign: TextAlign.justify,
                                    ),
                                    Container(height: 100),
                                    Text(
                                      read(c).fixedLang == 'Indonesia' ? subHeadDetailScan_id : subHeadDetailScan_en,
                                      style: TextStyle(color: C1, fontSize: 30),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 260,
                                width: size(c).width,
                                child: ListView.builder(
                                  itemCount: 5,
                                  padding: EdgeInsets.zero,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext c, int i) => card(c, _recomended[i][0]!, _recomended[i][1]!),
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
            isLoading ? Loading() : Container()
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
              btnSave(c, read(c).fixedLang == 'Indonesia' ? saveDetailScan_id : saveDetailScan_en, true),
              btnSave(c, read(c).fixedLang == 'Indonesia' ? dontSaveDetailScan_id : dontSaveDetailScan_en, false),
            ],
          ),
        ),
      ),
    );
  }
}
