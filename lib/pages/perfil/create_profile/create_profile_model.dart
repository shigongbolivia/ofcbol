import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CustomerName widget.
  FocusNode? customerNameFocusNode;
  TextEditingController? customerNameTextController;
  String? Function(BuildContext, String?)? customerNameTextControllerValidator;
  String? _customerNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for CustomePassword widget.
  FocusNode? customePasswordFocusNode;
  TextEditingController? customePasswordTextController;
  late bool customePasswordVisibility;
  String? Function(BuildContext, String?)?
      customePasswordTextControllerValidator;
  String? _customePasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    if (val.length < 6) {
      return 'La contraseña debe ser de al menos 6 caracteres';
    }

    return null;
  }

  // State field(s) for CustomerPassword2 widget.
  FocusNode? customerPassword2FocusNode;
  TextEditingController? customerPassword2TextController;
  late bool customerPassword2Visibility;
  String? Function(BuildContext, String?)?
      customerPassword2TextControllerValidator;
  String? _customerPassword2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for CustomerPhone widget.
  FocusNode? customerPhoneFocusNode;
  TextEditingController? customerPhoneTextController;
  final customerPhoneMask = MaskTextInputFormatter(mask: '+591 ########');
  String? Function(BuildContext, String?)? customerPhoneTextControllerValidator;
  // State field(s) for CustomerEmail widget.
  FocusNode? customerEmailFocusNode;
  TextEditingController? customerEmailTextController;
  String? Function(BuildContext, String?)? customerEmailTextControllerValidator;
  String? _customerEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    customerNameTextControllerValidator = _customerNameTextControllerValidator;
    customePasswordVisibility = false;
    customePasswordTextControllerValidator =
        _customePasswordTextControllerValidator;
    customerPassword2Visibility = false;
    customerPassword2TextControllerValidator =
        _customerPassword2TextControllerValidator;
    customerEmailTextControllerValidator =
        _customerEmailTextControllerValidator;
  }

  @override
  void dispose() {
    customerNameFocusNode?.dispose();
    customerNameTextController?.dispose();

    customePasswordFocusNode?.dispose();
    customePasswordTextController?.dispose();

    customerPassword2FocusNode?.dispose();
    customerPassword2TextController?.dispose();

    customerPhoneFocusNode?.dispose();
    customerPhoneTextController?.dispose();

    customerEmailFocusNode?.dispose();
    customerEmailTextController?.dispose();
  }
}
