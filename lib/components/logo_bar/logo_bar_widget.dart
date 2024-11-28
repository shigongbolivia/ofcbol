import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_bar_model.dart';
export 'logo_bar_model.dart';

class LogoBarWidget extends StatefulWidget {
  const LogoBarWidget({super.key});

  @override
  State<LogoBarWidget> createState() => _LogoBarWidgetState();
}

class _LogoBarWidgetState extends State<LogoBarWidget> {
  late LogoBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Una iniciativa de:',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 0.25,
                height: 85.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: Image.asset(
                      'assets/images/4-IBIF-H-B-BOLIVIA.png',
                    ).image,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.2,
                  height: 80.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: Image.asset(
                        'assets/images/Vertical_blanco@288x.png',
                      ).image,
                    ),
                  ),
                ),
              ),
            ].divide(SizedBox(width: 5.0)).around(SizedBox(width: 5.0)),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: AutoSizeText(
              'Proyecto ejecutado en alianza por Fundación PROFIN, IBIF, WWF y Solidar Suiza.',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 9.5,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Text(
              'Financiada por :',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.657,
            height: 78.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: Image.asset(
                        'assets/images/BID_LAB_-_aplicaciones-02_(1).png',
                      ).image,
                    ),
                  ),
                ),
                Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: Image.asset(
                        'assets/images/logoSueciaUEFinal_(1)_(1).png',
                      ).image,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
