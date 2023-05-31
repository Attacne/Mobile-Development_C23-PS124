import 'package:attacne/screens/change_language.dart';
import 'package:attacne/screens/detail_info.dart';
import 'package:attacne/screens/detail_profile.dart';
import 'package:attacne/screens/login.dart';
import 'package:attacne/screens/nav_bar.dart';
import 'package:attacne/services/colors.dart';
import 'package:attacne/services/colors.dart';
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
    return Scaffold(
      backgroundColor: Cw,
      appBar: AppBar(
        leadingWidth: 80,
        leading: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                gradient: gradient,
                borderRadius: rounded(50),
                image: DecorationImage(
                  image: read(c).imgPrifileNow == ''
                      ? AssetImage('assets/attacne_logo.png')
                      : AssetImage(read(c).imgPrifileNow),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 80,
        backgroundColor: Cw,
        elevation: 0,
        titleSpacing: 0,
        title: TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            open(c, DetailProfile());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                read(c).userName,
                style: TextStyle(color: Cb, fontSize: 17, fontWeight: bold),
              ),
              Text(
                read(c).email,
                style: TextStyle(color: Cb),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => dialogLogOut(c, dgLogOut_id),
            icon: const Icon(Icons.logout_outlined),
            splashRadius: 25,
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
                  head1Profile_id,
                  style: TextStyle(color: Cb, fontSize: 17, fontWeight: bold),
                ),
                const SizedBox(height: 10),
                btnData_profile(subHead1Profile_id, () {}),
                btnData_profile(subHead2Profile_id, () {}),
                const SizedBox(height: 50),
                Text(
                  head2Profile_id,
                  style: TextStyle(color: Cb, fontSize: 17, fontWeight: bold),
                ),
                const SizedBox(height: 10),
                btnData_profile(
                    subHead3Profile_id, () => open(c, ChangeLanguage())),
                btnData_profile(subHead4Profile_id, () {}),
                btnData_profile(subHead5Profile_id, () {}),
                btnData_profile(subHead6Profile_id, () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
