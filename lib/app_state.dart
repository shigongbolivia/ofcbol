import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _favoriteOfcs = prefs
              .getStringList('ff_favoriteOfcs')
              ?.map((path) => path.ref)
              .toList() ??
          _favoriteOfcs;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _favoriteOfcs = [];
  List<DocumentReference> get favoriteOfcs => _favoriteOfcs;
  set favoriteOfcs(List<DocumentReference> value) {
    _favoriteOfcs = value;
    prefs.setStringList('ff_favoriteOfcs', value.map((x) => x.path).toList());
  }

  void addToFavoriteOfcs(DocumentReference value) {
    favoriteOfcs.add(value);
    prefs.setStringList(
        'ff_favoriteOfcs', _favoriteOfcs.map((x) => x.path).toList());
  }

  void removeFromFavoriteOfcs(DocumentReference value) {
    favoriteOfcs.remove(value);
    prefs.setStringList(
        'ff_favoriteOfcs', _favoriteOfcs.map((x) => x.path).toList());
  }

  void removeAtIndexFromFavoriteOfcs(int index) {
    favoriteOfcs.removeAt(index);
    prefs.setStringList(
        'ff_favoriteOfcs', _favoriteOfcs.map((x) => x.path).toList());
  }

  void updateFavoriteOfcsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    favoriteOfcs[index] = updateFn(_favoriteOfcs[index]);
    prefs.setStringList(
        'ff_favoriteOfcs', _favoriteOfcs.map((x) => x.path).toList());
  }

  void insertAtIndexInFavoriteOfcs(int index, DocumentReference value) {
    favoriteOfcs.insert(index, value);
    prefs.setStringList(
        'ff_favoriteOfcs', _favoriteOfcs.map((x) => x.path).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
