import 'package:attacne/screens/change_language.dart';
import 'package:attacne/screens/change_theme.dart';
import 'package:attacne/screens/detail_info.dart';
import 'package:attacne/screens/detail_profile.dart';
import 'package:attacne/screens/login.dart';
import 'package:attacne/screens/nav_bar.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext c) {
    // menampilkan dialog untuk logout
    Future dialogLogOut() => showDialog(
          context: c,
          builder: (c) => AlertDialog(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: rounded(20)),
            content: Text(
              read(c).fixedLang == 'Indonesia' ? dgLogOut_id : dgLogOut_en,
              style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: bold),
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  closeDialog(c, true);
                  openDelete(c, Login());
                },
                child: Text(read(c).fixedLang == 'Indonesia' ? 'Ya' : 'Yes'),
              ),
              TextButton(
                onPressed: () => closeDialog(c, false),
                child: Text(read(c).fixedLang == 'Indonesia' ? 'Tidak' : 'no'),
              ),
            ],
          ),
        );

    return Scaffold(
      backgroundColor: read(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        leadingWidth: 70,
        leading: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                gradient: read(c).fixTheme ? gradientLight : gradientDark,
                borderRadius: rounded(50),
                image: DecorationImage(
                  image: read(c).imgPrifileNow == '' ? AssetImage('assets/attacne_logo.png') : AssetImage(read(c).imgPrifileNow),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 80,
        backgroundColor: read(c).fixTheme ? Cw : C3,
        elevation: 0,
        titleSpacing: 0,
        title: TextButton(
          style: ButtonStyle(overlayColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: () => open(c, DetailProfile()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(read(c).userName, style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 17)),
              Text(read(c).email, style: TextStyle(color: read(c).fixTheme ? Cb : Cw)),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => dialogLogOut(),
            icon: const Icon(Icons.logout_outlined),
            splashRadius: 1,
            color: const Color(0xff38ABBE),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  read(c).fixedLang == 'Indonesia' ? head1Profile_id : head1Profile_en,
                  style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 17, fontWeight: bold),
                ),
                const SizedBox(height: 10),
                btnData_profile(c, read(c).fixedLang == 'Indonesia' ? subHead1Profile_id : subHead1Profile_en),
                btnData_profile(c, read(c).fixedLang == 'Indonesia' ? subHead2Profile_id : subHead2Profile_en),
                const SizedBox(height: 50),
                Text(
                  read(c).fixedLang == 'Indonesia' ? head2Profile_id : head2Profile_en,
                  style: TextStyle(color: read(c).fixTheme ? Cb : Cw, fontSize: 17, fontWeight: bold),
                ),
                const SizedBox(height: 10),
                btnData_profile(c, read(c).fixedLang == 'Indonesia' ? subHead3Profile_id : subHead3Profile_en, dest: ChangeLanguage()),
                btnData_profile(c, read(c).fixedLang == 'Indonesia' ? subHead4Profile_id : subHead4Profile_en, dest: ChangeTheme()),
                btnData_profile(c, read(c).fixedLang == 'Indonesia' ? subHead5Profile_id : subHead5Profile_en),
                btnData_profile(c, read(c).fixedLang == 'Indonesia' ? subHead6Profile_id : subHead6Profile_en),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
