import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<String>? uniqueList(List<String>? inputList) {
  inputList ??= [];
  Set<String> uniqueSet = Set<String>.from(inputList);
  return uniqueSet.toList();
}

String? createWhatsappUrl(String? phone) {
  // given a string containging a phone number in the format +000 000 000, reduce to a 000000000 string
  if (phone == null || phone.isEmpty) {
    return null;
  }
  final digits = phone.replaceAll(RegExp(r'\D+'), '');
  return 'https://wa.me/$digits';
}

String parseToJsonAndExtractCatalogDownloadURL(String urlString) {
  List<dynamic> jsonArray = json.decode(urlString);
  return jsonArray[0]["downloadURL"];
}
