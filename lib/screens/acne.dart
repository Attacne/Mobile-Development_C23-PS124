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
  String? _image;
  File? _imageFile;

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
                      btnAcne(c, Icons.add_a_photo),
                      btnAcne(c, Icons.image_outlined),
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
    final PickedFile? pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      _image = pickedFile.path;
      _imageFile = File(pickedFile.path);
    }
  }

  bool isSave = false;

  // dialog mau pakai gambar itu atau tidak
  Future showMyDialogSave(BuildContext c, bool save) {
    return showDialog(
      context: c,
      builder: (c) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: rounded(10)),
        contentPadding: EdgeInsets.all(5),
        content: Container(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: read(c).fixTheme ? Cw : C2,
                    borderRadius: rounded(10),
                    image: DecorationImage(image: FileImage(File(_image!)), fit: BoxFit.cover),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                read(c).fixedLang == 'Indonesia' ? "Gunakan gambar ini?" : "Use this Image?",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        actionsPadding: EdgeInsets.zero,
        actions: [
          TextButton(
            onPressed: () {
              isSave = true;
              closeDialog(c, true);
            },
            child: Text(read(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes'),
          ),
          TextButton(
            onPressed: () {
              isSave = false;
              closeDialog(c, false);
            },
            child: Text(read(c).fixedLang == 'Indonesia' ? 'Tidak' : 'No'),
          ),
        ],
      ),
    );
  }

// button untuk membuka camera atau gallery
  Widget btnAcne(BuildContext c, IconData icon) {
    bool isGallery = icon == Icons.image_outlined;
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
          //ambil gambar
          isGallery ? await getImage(c, ImageSource.gallery) : await getImage(c, ImageSource.camera);
          _image != null ? await showMyDialogSave(c, true) : null;
          if (isSave) {
            //kirim gambar ke cc dan di proses
            await Future.delayed(const Duration(milliseconds: 200));

            //ubah tampilan loading
            create(c).setIsLoadingToCC();
            await Future.delayed(const Duration(seconds: 2));

            //hilangkan tampilan loading
            create(c).setIsLoadingToCC();
            open(c, DetailScan(_image));
            _image = null;
            await Future.delayed(const Duration(milliseconds: 200));
            create(c).setIndexNavBar(2);
            isSave = false;
          }
        },
        style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: rounded(10))),
        child: Icon(
          icon,
          color: isGallery
              ? read(c).fixTheme
                  ? C1
                  : Cw.withOpacity(.5)
              : read(c).fixTheme
                  ? Cw
                  : Cw.withOpacity(.5),
          size: size(c).height * .05,
        ),
      ),
    );
  }
}
