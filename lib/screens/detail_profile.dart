import 'package:attacne/services/colors.dart';
import 'package:attacne/services/provider.dart';
import 'package:attacne/services/strings_en.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailProfile extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: read(c).fixTheme ? Cw : C2,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: read(c).fixTheme ? Cw : C3,
        leading: IconButton(
          splashRadius: 1,
          splashColor: Colors.transparent,
          onPressed: () => close(c),
          icon: Icon(Icons.arrow_back_rounded, color: read(c).fixTheme ? Cb : Cw),
        ),
        elevation: 0,
        title:
            // Text('${read(c).email} ${read(c).userName}', style: TextStyle(color: Cb, fontSize: 10))
            Text(read(c).fixedLang == 'Indonesia' ? editProfileHead_id : editProfileHead_en, style: TextStyle(fontSize: 17, color: read(c).fixTheme ? Cb : Cw)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          padding: EdgeInsets.zero,
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 20),
            Container(
              width: size(c).width,
              decoration: BoxDecoration(color: Colors.transparent, borderRadius: rounded(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size(c).width * .5,
                    width: size(c).width * .5,
                    decoration: BoxDecoration(
                      gradient: read(c).fixTheme ? gradientLight : gradientDark,
                      borderRadius: rounded(200),
                      image: DecorationImage(
                        image: read(c).imgPrifileNow == '' ? const AssetImage('assets/attacne_logo.png') : AssetImage(read(c).imgPrifileNow),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      height: 250,
                      child: GridView.count(
                        padding: const EdgeInsets.all(5),
                        physics: const BouncingScrollPhysics(),
                        crossAxisCount: 2,
                        children: List.generate(
                          imgProfile.length,
                          (int i) => InkWell(
                            onTap: () => create(c).setProfile(imgProfile[i]),
                            splashColor: Colors.transparent,
                            child: Container(
                              margin: EdgeInsets.only(bottom: size(c).width / 30, left: size(c).width / 60, right: size(c).width / 60),
                              decoration: BoxDecoration(
                                borderRadius: rounded(10),
                                image: DecorationImage(image: AssetImage(imgProfile[i]), fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 50),
            TextFormField(
              onFieldSubmitted: (value) => create(c).setUserName(value),
              style: TextStyle(fontSize: 18, color: read(c).fixTheme ? Cb : Cw),
              keyboardType: TextInputType.text,
              initialValue: read(c).userName,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: C1), borderRadius: rounded(10)),
                border: OutlineInputBorder(borderRadius: rounded(10), borderSide: BorderSide(color: C1)),
                enabledBorder: OutlineInputBorder(borderRadius: rounded(10), borderSide: BorderSide(color: C1)),
                labelStyle: TextStyle(fontSize: 18, color: C1),
                labelText: read(c).fixedLang == 'Indonesia' ? labelUserNameEP_id : labelUserNameEP_en,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onFieldSubmitted: (value) => create(c).setEmail(value),
              style: TextStyle(fontSize: 18, color: read(c).fixTheme ? Cb : Cw),
              keyboardType: TextInputType.emailAddress,
              initialValue: read(c).email,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: C1), borderRadius: rounded(10)),
                border: OutlineInputBorder(borderRadius: rounded(10), borderSide: BorderSide(color: C1)),
                enabledBorder: OutlineInputBorder(borderRadius: rounded(10), borderSide: BorderSide(color: C1)),
                labelStyle: TextStyle(fontSize: 18, color: C1),
                labelText: read(c).fixedLang == 'Indonesia' ? labelEmailEP_id : labelEmailEP_en,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              onFieldSubmitted: (value) => create(c).setPass(value),
              style: TextStyle(fontSize: 18, color: read(c).fixTheme ? Cb : Cw),
              keyboardType: TextInputType.visiblePassword,
              obscureText: read(c).isHidePass ? true : false,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 1,
                  onPressed: () => create(c).passSet(),
                  icon: Icon(
                    read(c).isHidePass ? Icons.visibility_off : Icons.visibility,
                    color: read(c).isHidePass
                        ? read(c).fixTheme
                            ? Cb.withOpacity(.5)
                            : Cw.withOpacity(.5)
                        : C1,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: C1), borderRadius: rounded(10)),
                border: OutlineInputBorder(borderRadius: rounded(10), borderSide: BorderSide(color: C1)),
                enabledBorder: OutlineInputBorder(borderRadius: rounded(10), borderSide: BorderSide(color: C1)),
                labelStyle: TextStyle(fontSize: 18, color: C1),
                labelText: read(c).fixedLang == 'Indonesia' ? labelUserNameEP_id : labelUserNameEP_en,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(C1),
                foregroundColor: MaterialStateProperty.all(Cw),
                padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: rounded(10))),
              ),
              onPressed: () => close(c),
              child: Text(read(c).fixedLang == 'Indonesia' ? 'Simpan' : 'Save'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
