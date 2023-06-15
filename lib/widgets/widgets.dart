import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/variabels.dart';

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
      decoration: BoxDecoration(color: read(c).fixTheme ? Cw : C3, borderRadius: rounded(10)),
      child: TextButton(
        style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
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

Future<void> launchUrl1(String link) async {
  final Uri _url = Uri.parse(link);
  if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $_url');
  }
}

// btn untuk profile
Widget btnData_profile(BuildContext c, String title, {required VoidCallback voidCallback}) {
  return TextButton(
    onPressed: voidCallback,
    /*onPressed: () {
      _launchURL('www.youtube.com');
    },*/
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
    ),
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

// TextField dengan background putih
/*Widget inputData(BuildContext c, IconData icon, String hintText, bool isPassword, bool isEmail) {
  return Container(
    width: size(c).width * .9,
    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    decoration: BoxDecoration(color: Cw.withOpacity(.1), borderRadius: rounded(10)),
    child: TextField(
      style: TextStyle(fontSize: 18, color: Cw),
      obscureText: isPassword
          ? read(c).isHidePass
              ? true
              : false
          : isPassword,
      onSubmitted: (text) {},
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        suffixIcon: isPassword
            ? IconButton(
                padding: EdgeInsets.zero,
                splashRadius: 1,
                onPressed: () => create(c).passSet(),
                icon: Icon(
                  read(c).isHidePass ? Icons.visibility_off : Icons.visibility,
                  color: read(c).isHidePass ? Cw.withOpacity(.5) : C1,
                ),
              )
            : null,
        prefixIcon: Icon(icon, color: C1),
        border: InputBorder.none,
        hintMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 18, color: Cw.withOpacity(.2)),
      ),
    ),
  );
}*/

// button login/register
/*Widget loginRegister(BuildContext c, String title, double width, VoidCallback v) {
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
}*/

/*Future<void> launchURL(String url) async {
  final Uri uri = Uri(scheme: "https", host: url);
  if (!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Can not launch url";
  }
}*/
