import 'package:attacne/services/strings_id.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
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
  String _userName = mainUserName_id;

  String get userName => _userName;

  void setUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

//------------------------------------------------------------------------------
//Untuk data email Profile
  String _email = mainEmail_id;

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
  String _selectedLang = 'Indonesia';

  String get selectedLang => _selectedLang;

  void setSelectedLang(String value) {
    _selectedLang = value;
    notifyListeners();
  }

//------------------------------------------------------------------------------
// untuk pemilihan bahasa page
  String _fixedLang = 'Indonesia';

  String get fixedLang => _fixedLang;

  void setFixedLang() {
    _fixedLang = _selectedLang;
    notifyListeners();
  }
}
