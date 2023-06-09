import 'package:attacne/screens/change_language.dart';
import 'package:attacne/screens/acne.dart';
import 'package:attacne/screens/change_theme.dart';
import 'package:attacne/screens/detail_info.dart';
import 'package:attacne/screens/detail_profile.dart';
import 'package:attacne/screens/detail_scan.dart';
import 'package:attacne/screens/home.dart';
import 'package:attacne/screens/login.dart';
import 'package:attacne/screens/nav_bar.dart';
import 'package:attacne/screens/profile_settings.dart';
import 'package:attacne/screens/register.dart';
import 'package:attacne/services/provider.dart';
import 'package:attacne/services/shared_preferences.dart';
import 'package:attacne/services/strings_id.dart';
import 'package:attacne/widgets/example.dart';
import 'package:attacne/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light));
  runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (_) => StateM())], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: NavBarApp(),
      );
}
