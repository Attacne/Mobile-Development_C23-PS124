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

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Watch(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        backgroundColor: Watch(c).fixTheme ? Cw : C3,
        elevation: 0,
        title: Image.asset('assets/attacne_logo2.png', fit: BoxFit.fitWidth, width: 150),
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
                  Watch(c).fixedLang == 'Indonesia' ? head2Profile_id : head2Profile_en,
                  style: TextStyle(color: Watch(c).fixTheme ? Cb : Cw, fontSize: 17, fontWeight: bold),
                ),
                const SizedBox(height: 10),
                btnData_profile(c, Watch(c).fixedLang == 'Indonesia' ? subHead1Profile_id : subHead1Profile_en, voidCallback: () => launchUrl1('https://www.youtube.com/watch?v=-TMbfwi7Bz0')),
                btnData_profile(c, Watch(c).fixedLang == 'Indonesia' ? subHead3Profile_id : subHead3Profile_en, voidCallback: () => open(c, ChangeLanguage())),
                btnData_profile(c, Watch(c).fixedLang == 'Indonesia' ? subHead4Profile_id : subHead4Profile_en, voidCallback: () => open(c, ChangeTheme())),
                btnData_profile(c, Watch(c).fixedLang == 'Indonesia' ? subHead5Profile_id : subHead5Profile_en, voidCallback: () => launchUrl1('https://github.com/Attacne')),
                btnData_profile(c, Watch(c).fixedLang == 'Indonesia' ? subHead6Profile_id : subHead6Profile_en,
                    voidCallback: () => launchUrl1('https://play.google.com/store/apps/details?id=com.github.android')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
