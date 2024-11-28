import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'contact_widget.dart' show ContactWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactModel extends FlutterFlowModel<ContactWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> ofcContacts = [];
  void addToOfcContacts(DocumentReference item) => ofcContacts.add(item);
  void removeFromOfcContacts(DocumentReference item) =>
      ofcContacts.remove(item);
  void removeAtIndexFromOfcContacts(int index) => ofcContacts.removeAt(index);
  void insertAtIndexInOfcContacts(int index, DocumentReference item) =>
      ofcContacts.insert(index, item);
  void updateOfcContactsAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      ofcContacts[index] = updateFn(ofcContacts[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
