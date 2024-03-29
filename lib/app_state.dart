import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectLanguageIndex =
          prefs.getInt('ff_selectLanguageIndex') ?? _selectLanguageIndex;
    });
    _safeInit(() {
      _authToken = prefs.getString('ff_authToken') ?? _authToken;
    });
    _safeInit(() {
      _email = prefs.getString('ff_email') ?? _email;
    });
    _safeInit(() {
      _role = prefs.getString('ff_role') ?? _role;
    });
    _safeInit(() {
      _isInstructionDialogShow = prefs.getBool('ff_isInstructionDialogShow') ??
          _isInstructionDialogShow;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _selectLanguageIndex = 100;
  int get selectLanguageIndex => _selectLanguageIndex;
  set selectLanguageIndex(int _value) {
    _selectLanguageIndex = _value;
    prefs.setInt('ff_selectLanguageIndex', _value);
  }

  String _selectedDrawerPage = 'Dashboard';
  String get selectedDrawerPage => _selectedDrawerPage;
  set selectedDrawerPage(String _value) {
    _selectedDrawerPage = _value;
  }

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String _value) {
    _authToken = _value;
    prefs.setString('ff_authToken', _value);
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    prefs.setString('ff_email', _value);
  }

  List<LanguageDataStruct> _languages = [
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Arabic\",\"iso_code\":\"ar\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDSl3M4CYdtPe21nVgmJfRGHSbW8we1zm-sg&usqp=CAU\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"name\":\"Chinese (Simplified)\",\"iso_code\":\"zh\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/china.png\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"name\":\"English\",\"iso_code\":\"en\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/english.png\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"name\":\"French\",\"iso_code\":\"fr\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/france.png\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"4\",\"name\":\"German\",\"iso_code\":\"de\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/german.png\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"5\",\"name\":\"Portuguese\",\"iso_code\":\"pt\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/portuguese.png\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"6\",\"name\":\"Russian\",\"iso_code\":\"ru\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/russian.jpeg\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"7\",\"name\":\"Spanish\",\"iso_code\":\"es\",\"image\":\"https://vcards.infyom.com/assets/img/LanguageImage/spain.png\"}')),
    LanguageDataStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"8\",\"name\":\"Turkish\",\"iso_code\":\"tr\",\"image\":\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQE-TIhwT4-G04c72eFfn_vV8ZA_U4pKGhg&usqp=CAU\"}'))
  ];
  List<LanguageDataStruct> get languages => _languages;
  set languages(List<LanguageDataStruct> _value) {
    _languages = _value;
  }

  void addToLanguages(LanguageDataStruct _value) {
    _languages.add(_value);
  }

  void removeFromLanguages(LanguageDataStruct _value) {
    _languages.remove(_value);
  }

  void removeAtIndexFromLanguages(int _index) {
    _languages.removeAt(_index);
  }

  void updateLanguagesAtIndex(
    int _index,
    LanguageDataStruct Function(LanguageDataStruct) updateFn,
  ) {
    _languages[_index] = updateFn(_languages[_index]);
  }

  void insertAtIndexInLanguages(int _index, LanguageDataStruct _value) {
    _languages.insert(_index, _value);
  }

  int _selectedGroupIndex = 1000;
  int get selectedGroupIndex => _selectedGroupIndex;
  set selectedGroupIndex(int _value) {
    _selectedGroupIndex = _value;
  }

  String _scannedURL = '';
  String get scannedURL => _scannedURL;
  set scannedURL(String _value) {
    _scannedURL = _value;
  }

  String _role = '';
  String get role => _role;
  set role(String _value) {
    _role = _value;
    prefs.setString('ff_role', _value);
  }

  int _selectedBusinessGroupIndex = 0;
  int get selectedBusinessGroupIndex => _selectedBusinessGroupIndex;
  set selectedBusinessGroupIndex(int _value) {
    _selectedBusinessGroupIndex = _value;
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  set isLoading(bool _value) {
    _isLoading = _value;
  }

  String _prefixCode = '';
  String get prefixCode => _prefixCode;
  set prefixCode(String _value) {
    _prefixCode = _value;
  }

  bool _isVcardAppointment = false;
  bool get isVcardAppointment => _isVcardAppointment;
  set isVcardAppointment(bool _value) {
    _isVcardAppointment = _value;
  }

  bool _isVcardEnquiry = false;
  bool get isVcardEnquiry => _isVcardEnquiry;
  set isVcardEnquiry(bool _value) {
    _isVcardEnquiry = _value;
  }

  bool _isAPILoading = false;
  bool get isAPILoading => _isAPILoading;
  set isAPILoading(bool _value) {
    _isAPILoading = _value;
  }

  int _SelectedGroupId = 0;
  int get SelectedGroupId => _SelectedGroupId;
  set SelectedGroupId(int _value) {
    _SelectedGroupId = _value;
  }

  bool _isInstructionDialogShow = false;
  bool get isInstructionDialogShow => _isInstructionDialogShow;
  set isInstructionDialogShow(bool _value) {
    _isInstructionDialogShow = _value;
    prefs.setBool('ff_isInstructionDialogShow', _value);
  }

  List<dynamic> _businessGroupList = [];
  List<dynamic> get businessGroupList => _businessGroupList;
  set businessGroupList(List<dynamic> _value) {
    _businessGroupList = _value;
  }

  void addToBusinessGroupList(dynamic _value) {
    _businessGroupList.add(_value);
  }

  void removeFromBusinessGroupList(dynamic _value) {
    _businessGroupList.remove(_value);
  }

  void removeAtIndexFromBusinessGroupList(int _index) {
    _businessGroupList.removeAt(_index);
  }

  void updateBusinessGroupListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _businessGroupList[_index] = updateFn(_businessGroupList[_index]);
  }

  void insertAtIndexInBusinessGroupList(int _index, dynamic _value) {
    _businessGroupList.insert(_index, _value);
  }

  List<dynamic> _businessCardList = [];
  List<dynamic> get businessCardList => _businessCardList;
  set businessCardList(List<dynamic> _value) {
    _businessCardList = _value;
  }

  void addToBusinessCardList(dynamic _value) {
    _businessCardList.add(_value);
  }

  void removeFromBusinessCardList(dynamic _value) {
    _businessCardList.remove(_value);
  }

  void removeAtIndexFromBusinessCardList(int _index) {
    _businessCardList.removeAt(_index);
  }

  void updateBusinessCardListAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _businessCardList[_index] = updateFn(_businessCardList[_index]);
  }

  void insertAtIndexInBusinessCardList(int _index, dynamic _value) {
    _businessCardList.insert(_index, _value);
  }

  bool _isBusinessScreenSelected = false;
  bool get isBusinessScreenSelected => _isBusinessScreenSelected;
  set isBusinessScreenSelected(bool _value) {
    _isBusinessScreenSelected = _value;
  }

  bool _isContactSaving = false;
  bool get isContactSaving => _isContactSaving;
  set isContactSaving(bool _value) {
    _isContactSaving = _value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}
