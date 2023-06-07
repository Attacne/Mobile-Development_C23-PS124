import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SharedP {
  // Instalasi
  static Future<SharedPreferences> prefs() async => await SharedPreferences.getInstance();

//--------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------

  // set awal ketika pembuatan value
  static Future setTheme(String key, String value) async => (await prefs()).setString(key, value);

  // pengambilan nilai yang telah di buat
  static Future<String> getTheme(String key) async => (await prefs()).getString(key) ?? 'LightTheme';

//--------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------

  // set awal ketika pembuatan value
  static Future setLang(String key, String value) async => (await prefs()).setString(key, value);

  // pengambilan nilai yang telah di buat
  static Future<String> getLang(String key) async => (await prefs()).getString(key) ?? 'English';

//--------------------------------------------------------------------------------------------------------
  // menghapus nilai yang telah dibuat
  static Future remove(String key) async => (await prefs()).remove(key);
}
