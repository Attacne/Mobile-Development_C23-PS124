import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/screens/detail_scan.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/loading.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// bool isLoadingToCC = false;

class Acne extends StatelessWidget {
// untuk simpan sementara file gambar,judul dan desk. setiap hasil scan yang belum
  File? _image;

  @override
  Widget build(BuildContext c) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        backgroundColor: read(c).fixTheme ? Cw : C2,
        body: Stack(
          children: [
            Positioned(
              bottom: size(c).height * .5,
              left: -(900 / 5),
              right: -(900 / 5),
              child: Container(
                height: 900,
                decoration: BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark, borderRadius: rounded(1000)),
              ),
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(read(c).fixedLang == 'Indonesia' ? acneHead_id : acneHead_en, style: TextStyle(color: Cw, fontSize: 40, fontWeight: bold)),
                  Image.asset(height: size(c).height * .35, read(c).fixTheme ? imgAcneLight : imgAcneDark, fit: BoxFit.fitWidth),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      btnAcne(c, Icons.camera_alt),
                      btnAcne(c, Icons.add_rounded),
                    ],
                  ),
                ],
              ),
            ),
            read(c).loadingToCC ? Loading() : Container()
          ],
        ),
      ),
    );
  }

// fungsi open camera or gallery
  Future getImage(BuildContext c, ImageSource imageSource) async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked = await picker.pickImage(source: imageSource);
    _image = File(imagePicked!.path);
    // await Future.delayed(Duration(seconds: 1));
    // read(c).setLoading();
  }

// button untuk membuka camera atau gallery
  Widget btnAcne(BuildContext c, IconData icon) {
    bool isGallery = icon == Icons.add_rounded;
    return Container(
      height: size(c).height * .15,
      width: size(c).width * .3,
      decoration: isGallery
          ? BoxDecoration(
              border: Border.all(width: 3, color: read(c).fixTheme ? C1 : Cw.withOpacity(.5)),
              borderRadius: rounded(15),
            )
          : BoxDecoration(gradient: read(c).fixTheme ? gradientLight : gradientDark, borderRadius: rounded(15)),
      child: TextButton(
        onPressed: () async {
          isGallery ? await getImage(c, ImageSource.gallery) : await getImage(c, ImageSource.camera);
          await Future.delayed(const Duration(milliseconds: 200)); //kirim gambar ke cc dan di proses
          create(c).setIsLoadingToCC(); //ubah tampilan loading
          await Future.delayed(const Duration(seconds: 3));
          open(c, DetailScan(_image));
          create(c).setIsLoadingToCC(); //hilangkan tampilan loading
        },
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: rounded(10)),
        ),
        child: Icon(icon,
            color: isGallery
                ? read(c).fixTheme
                    ? C1
                    : Cw.withOpacity(.5)
                : read(c).fixTheme
                    ? Cw
                    : Cw.withOpacity(.5),
            size: size(c).height * .05),
      ),
    );
  }
}
