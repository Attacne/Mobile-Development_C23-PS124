/*
import 'dart:io';

import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:path/path.dart';

class CreateContoh extends StatefulWidget {
  const CreateContoh({super.key});

  @override
  State<CreateContoh> createState() => _CreateContohState();
}

class _CreateContohState extends State<CreateContoh> {
  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    Future getImage(BuildContext c, ImageSource imageSource) async {
      final PickedFile? pickedFile = await ImagePicker().getImage(source: imageSource);
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
        setState(() {});
      }
    }

    Future upload(File imageFile) async {
      var stream = http.ByteStream(DelegatingStream.typed(imageFile.openRead()));
      var length = await imageFile.length();
      var uri = Uri.parse("http://10.0.2.2/my_store/upload.php");

      var request = http.MultipartRequest("POST", uri);

      var multipartFile = http.MultipartFile("image", stream, length, filename: basename(imageFile.path));
      request.fields['title'] = "Gambar 1";
      request.files.add(multipartFile);

      var response = await request.send();

      if (response.statusCode == 200) {
        print("Image Uploaded");
      } else {
        print("Upload Failed");
      }
      */
/*response.stream.transform(utf8.decoder).listen((value) {
        print(value);
      });*//*

    }

    return Scaffold(
      body: Center(
        child: Container(
          height: size(context).width,
          width: size(context).width,
          child: _imageFile == null ? Center(child: Text('tidak ada gambar')) : Image.file(_imageFile!, fit: BoxFit.cover),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () => getImage(context, ImageSource.camera),
                child: Text("foto"),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () => upload(_imageFile!),
                child: Text("upload"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
