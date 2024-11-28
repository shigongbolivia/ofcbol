import '/backend/backend.dart';
import '/components/logo_bar/logo_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'favorites_widget.dart' show FavoritesWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FavoritesModel extends FlutterFlowModel<FavoritesWidget> {
  ///  State fields for stateful widgets in this page.

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
