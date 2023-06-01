import 'package:attacne/services/colors.dart';
import 'package:attacne/services/provider.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/services/variabels.dart';
import 'package:attacne/widgets/futures.dart';
import 'package:attacne/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailProfile extends StatefulWidget {
  @override
  State<DetailProfile> createState() => _DetailProfileState();
}

class _DetailProfileState extends State<DetailProfile> {
  bool isTap = false;

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
        title: Text(editProfileHead_id, style: TextStyle(fontSize: 17, color: read(c).fixTheme ? Cb : Cw)),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 20),
                Container(
                  width: size(c).width,
                  decoration:
                      BoxDecoration(color: Colors.transparent, borderRadius: rounded(20)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: size(c).width * .5,
                        width: size(c).width * .5,
                        decoration: BoxDecoration(
                          gradient: gradient,
                          borderRadius: rounded(200),
                          image: DecorationImage(
                            image: read(c).imgPrifileNow == ''
                                ? const AssetImage('assets/attacne_logo.png')
                                : AssetImage(read(c).imgPrifileNow),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: size(c).width * .5,
                          child: GridView.count(
                            padding: const EdgeInsets.all(5),
                            physics: const BouncingScrollPhysics(),
                            crossAxisCount: 2,
                            children: List.generate(
                              imgProfile_id.length,
                              (int i) => InkWell(
                                onTap: () =>
                                    create(c).setProfile(imgProfile_id[i]),
                                splashColor: Colors.transparent,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: size(c).width / 30,
                                    left: size(c).width / 60,
                                    right: size(c).width / 60,
                                  ),
                                  decoration: BoxDecoration(
                                    color: C1,
                                    borderRadius: rounded(10),
                                    image: DecorationImage(
                                      image: AssetImage(imgProfile_id[i]),
                                      fit: BoxFit.cover,
                                    ),
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
                textFormField(c, labelUserNameEP_id, text: read(c).userName),
                const SizedBox(height: 20),
                textFormField(c, labelEmailEP_id,
                    type: TextInputType.emailAddress, text: read(c).email),
                const SizedBox(height: 20),
                textFormField(c, labelPassEP_id, isPass: true),
                const SizedBox(height: 20),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(C1),
                    foregroundColor: MaterialStateProperty.all(Cw),
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: rounded(10),
                    )),
                  ),
                  onPressed: () async {
                    isTap = !isTap;
                    setState(() {});
                    await Future.delayed(const Duration(seconds: 1));
                    isTap = !isTap;
                    setState(() {});
                    create(c).setUserName(sementara1!);
                    create(c).setEmail(sementara2!);
                  },
                  child: const Text('save'),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: isTap ? 50 : 0,
                width: size(c).width,
                decoration: BoxDecoration(
                  color: C1,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(child: Text('Save', style: TextStyle(color: Cw))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
