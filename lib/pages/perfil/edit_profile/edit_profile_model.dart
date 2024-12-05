import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Customername widget.
  FocusNode? customernameFocusNode;
  TextEditingController? customernameTextController;
  String? Function(BuildContext, String?)? customernameTextControllerValidator;
  // State field(s) for CustomerNumber widget.
  FocusNode? customerNumberFocusNode;
  TextEditingController? customerNumberTextController;
  final customerNumberMask = MaskTextInputFormatter(mask: '+591 ########');
  String? Function(BuildContext, String?)?
      customerNumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    customernameFocusNode?.dispose();
    customernameTextController?.dispose();

    customerNumberFocusNode?.dispose();
    customerNumberTextController?.dispose();
  }
}
