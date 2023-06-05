import 'dart:io';

import 'package:attacne/models/acneAdapter.dart';
import 'package:attacne/screens/detail_info.dart';
import 'package:attacne/screens/detail_scan.dart';
import 'package:attacne/screens/detail_scan_history.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Menghapus lapisan teratas pada page
void close(BuildContext c) => Navigator.pop(c);
//menghapus dialog teratas pada page
void closeDialog(BuildContext c, bool respon) => Navigator.of(c).pop(respon);

// Menambah lapisan teratas pada page
void open(BuildContext c, dynamic page) => Navigator.push(c, MaterialPageRoute(builder: (context) => page));

// Mengganti lapisan teratas pada page
void openDelete(BuildContext c, dynamic page) => Navigator.pushReplacement(c, MaterialPageRoute(builder: (context) => page));

// Untuk size custom
Size size(BuildContext c) => MediaQuery.of(c).size;

// menampilkan bentuk kartu listview hodizontal di Home Page
Widget card(BuildContext c, String image, String title, {dynamic dest}) {
  return Card(
    elevation: 5,
    margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
    shape: RoundedRectangleBorder(borderRadius: rounded(10)),
    child: Container(
      width: 240,
      decoration: BoxDecoration(
        borderRadius: rounded(10),
        color: read(c).fixTheme ? Cw : C3,
      ),
      child: TextButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: () => dest == null ? {} : open(c, dest),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image, fit: BoxFit.cover, height: 170),
            Text(title, style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 20)),
          ],
        ),
      ),
    ),
  );
}

// TextField dengan background putih
Widget inputData(BuildContext c, IconData icon, String hintText, bool isPassword, bool isEmail) {
  return Container(
    height: size(c).width / 8,
    width: size(c).width / 1.2,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Cw,
      borderRadius: rounded(15),
      boxShadow: [
        BoxShadow(color: Cb.withOpacity(.5), blurRadius: 5, offset: const Offset(0, 5)),
      ],
    ),
    child: TextField(
      style: TextStyle(fontSize: 20, color: Cb),
      obscureText: isPassword,
      onChanged: (text) {},
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: C1,
        ),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20, color: Color(0xff999999)),
      ),
    ),
  );
}

// button login/register
Widget loginRegister(BuildContext c, String title, double width, VoidCallback v) {
  return InkWell(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    onTap: v,
    child: Container(
      height: size(c).width / 8,
      width: size(c).width / width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: read(c).fixTheme ? gradientLight : gradientDark,
        borderRadius: rounded(15),
        boxShadow: [
          BoxShadow(color: Cb.withOpacity(.5), blurRadius: 10, offset: const Offset(0, 5)),
        ],
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: Cw, fontWeight: bold),
      ),
    ),
  );
}

// btn untuk profile
Widget btnData_profile(BuildContext c, String title, {dynamic dest}) {
  return TextButton(
    onPressed: () => open(c, dest),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 17, fontWeight: FontWeight.w400),
        ),
        Icon(Icons.chevron_right_rounded, color: C1, size: 30),
      ],
    ),
  );
}
