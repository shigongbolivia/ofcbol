import '/auth/firebase_auth/auth_util.dart';
import '/components/logo_bar/logo_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CustomerEmail widget.
  FocusNode? customerEmailFocusNode;
  TextEditingController? customerEmailTextController;
  String? Function(BuildContext, String?)? customerEmailTextControllerValidator;
  // State field(s) for CustomerPassword widget.
  FocusNode? customerPasswordFocusNode;
  TextEditingController? customerPasswordTextController;
  late bool customerPasswordVisibility;
  String? Function(BuildContext, String?)?
      customerPasswordTextControllerValidator;
  // Model for logoBar component.
  late LogoBarModel logoBarModel;

  @override
  void initState(BuildContext context) {
    customerPasswordVisibility = false;
    logoBarModel = createModel(context, () => LogoBarModel());
  }

  @override
  void dispose() {
    customerEmailFocusNode?.dispose();
    customerEmailTextController?.dispose();

    customerPasswordFocusNode?.dispose();
    customerPasswordTextController?.dispose();

    logoBarModel.dispose();
  }
}
