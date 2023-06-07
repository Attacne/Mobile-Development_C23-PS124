import 'package:attacne/services/strings_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class StateM with ChangeNotifier, DiagnosticableTreeMixin {
//------------------------------------------------------------------------------
//Untuk Image Profile
  String _imgProfile = '';

  String get imgPrifileNow => _imgProfile;

  void setProfile(String img) {
    _imgProfile = img;
    notifyListeners();
  }

//------------------------------------------------------------------------------
//Untuk data userName Profile
  void setListProfile(String value1, String value2, String value3) {
    _userName = value1;
    _email = value2;
    _pass = value3;
    notifyListeners();
  }

  String _userName = 'Muh. Hilmy Noor Fauzi';

  String get userName => _userName;

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

//------------------------------------------------------------------------------
//Untuk data email Profile
  String _email = 'a267dsx2266@bangkit.academy';

  String get email => _email;

  void setEmail(String email) {
    _email = email;
    notifyListeners();
  }

//------------------------------------------------------------------------------
//Untuk data pass Profile
  String _pass = '';

  String get pass => _pass;

  void setPass(String pass) {
    _pass = pass;
    notifyListeners();
  }

//------------------------------------------------------------------------------
//Untuk tema
  bool _theme = true;

  bool get tema => _theme;

  void onDark() {
    _theme = !_theme;
    notifyListeners();
  }

//------------------------------------------------------------------------------
// untuk hide icon pass di detail profile page
  bool _isHidePass = true;

  bool get isHidePass => _isHidePass;

  void passSet() {
    _isHidePass = !_isHidePass;
    notifyListeners();
  }

//------------------------------------------------------------------------------
// untuk pemilihan bahasa page
  String _selectedLang = 'English';

  String get selectedLang => _selectedLang;

  void setSelectedLang(String value) {
    _selectedLang = value;
    notifyListeners();
  }

  String _fixedLang = 'English';

  String get fixedLang => _fixedLang;

  void setFixedLang() {
    _fixedLang = _selectedLang;
    notifyListeners();
  }

//------------------------------------------------------------------------------
// untuk pemilihan tema page

  String _selectedTheme = 'LightTheme';

  String get selectedTheme => _selectedTheme;

  void setSelectedTheme(String value) {
    _selectedTheme = value;
    notifyListeners();
  }

  bool _fixTheme = true;

  bool get fixTheme => _fixTheme;

  void setFixedTheme(BuildContext c) {
    _selectedTheme == 'System'
        ? MediaQuery.of(c).platformBrightness == Brightness.light
            ? _fixTheme = true
            : _fixTheme = false
        : _selectedTheme == 'LightTheme'
            ? _fixTheme = true
            : _fixTheme = false;

    notifyListeners();
  }

//
  bool _ladingToCC = false;

  bool get loadingToCC => _ladingToCC;

  void setIsLoadingToCC() {
    _ladingToCC = !_ladingToCC;
    notifyListeners();
  }

//
  bool _ladingToDB = false;

  bool get loadingToDB => _ladingToDB;

  void setIsLoadingToDB() {
    _ladingToDB = !_ladingToDB;
    notifyListeners();
  }

}
