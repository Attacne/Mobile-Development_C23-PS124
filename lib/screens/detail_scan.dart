import 'dart:io';
import 'dart:math';

import 'package:attacne/services/variabels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import '../services/colors.dart';
import '../services/strings_en.dart';
import '../services/strings_id.dart';
import '../widgets/loading.dart';
import '../widgets/widgets.dart';
import 'nav_bar.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

class DetailScan extends StatefulWidget {
  String image;

  DetailScan(this.image);

  @override
  State<DetailScan> createState() => _DetailScanState();
}

class _DetailScanState extends State<DetailScan> {
  final index = Random().nextInt(5);

  @override
  void initState() {
    super.initState();
    db.database();
    setState(() {});
  }

  Future upload(File imageFile) async {
    var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
    var length = await imageFile.length();
    var uri = Uri.parse("http://10.0.2.2/my_store/upload.php");

    var request = http.MultipartRequest("POST", uri);

    var multipartFile = http.MultipartFile("image", stream, length, filename: basename(imageFile.path));
    // request.fields['title'] = "cTitle.text";
    request.files.add(multipartFile);

    var response = await request.send();

    if (response.statusCode == 200) {
      print("Image Uploaded");
    } else {
      print("Upload Failed");
    }
    /*response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    });*/
  }

  @override
  Widget build(BuildContext c) {
    var title = jenisAcne[index];
    var desc = '';

    for (int i = 0; i < jenisAcne.length; i++) {
      if (title == jenisAcne[i]) {
        desc = desk[i];
      }
    }
    Widget btnSave({required bool save}) {
      return Container(
        color: Cw,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15),
            backgroundColor: C1,
            shape: RoundedRectangleBorder(borderRadius: rounded(10)),
          ),
          onPressed: () async {
            upload(File(widget.image));
            await db.insert({
              'image': widget.image,
              'title': title,
              'desc': desc,
              'date': 'Date: ${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}, '
                  'at ${DateTime.now().hour}:${DateTime.now().minute}:${DateTime.now().second} ${DateTime.now().timeZoneName}',
            });
            Create(c).setIsLoadingToDB(); //ubah tampilan loading
            await Future.delayed(const Duration(seconds: 1));
            Create(c).setIsLoadingToDB(); //hilangkan tampilan loading
            await Future.delayed(const Duration(milliseconds: 500));
            Navigator.pop(c, true);
          },
          child: Text(Watch(c).fixedLang == 'Indonesia' ? saveDetailScan_id : saveDetailScan_en, style: const TextStyle(fontSize: 20)),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Stack(
          children: [
            ScrollConfiguration(
              behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    elevation: 5,
                    pinned: true,
                    backgroundColor: Watch(c).fixTheme ? C1 : C3,
                    expandedHeight: size(c).width,
                    title:
                        // Text('${widget.image}', style: TextStyle(color: Colors.black)),
                        Text(Watch(c).fixedLang == 'Indonesia' ? detailScanHead_id : detailScanHead_en),
                    flexibleSpace: FlexibleSpaceBar(
                      background: widget.image != null
                          ? Container(
                              decoration: BoxDecoration(
                                color: Watch(c).fixTheme ? Cw : C2,
                                image: DecorationImage(image: FileImage(File(widget.image)), fit: BoxFit.cover),
                              ),
                            )
                          : Container(color: Watch(c).fixTheme ? C1 : C2, child: const Center(child: CircularProgressIndicator())),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext c, int index) {
                        return Container(
                          decoration: BoxDecoration(color: Watch(c).fixTheme ? Cw : C2),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(height: 10, width: 10),
                                    Text(title, style: TextStyle(color: C1, fontSize: 30, fontWeight: bold)),
                                    Text(desc, style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw, fontSize: 17), textAlign: TextAlign.justify),
                                    Container(height: 100),
                                  ],
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
            Watch(c).loadingToDB ? Loading() : Container()
          ],
        ),
      ),
      bottomNavigationBar: Watch(c).loadingToDB ? null : btnSave(save: true),
    );
  }
}
