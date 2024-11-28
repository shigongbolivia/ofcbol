import '/backend/backend.dart';
import '/components/logo_bar/logo_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'catalog_widget.dart' show CatalogWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CatalogModel extends FlutterFlowModel<CatalogWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDownRegion widget.
  String? dropDownRegionValue;
  FormFieldController<String>? dropDownRegionValueController;
  // Model for logoBar component.
  late LogoBarModel logoBarModel;

  @override
  void initState(BuildContext context) {
    logoBarModel = createModel(context, () => LogoBarModel());
  }

  @override
  void dispose() {
    logoBarModel.dispose();
  }
}
