import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'healer_home_model.dart';
export 'healer_home_model.dart';

class HealerHomeWidget extends StatefulWidget {
  const HealerHomeWidget({super.key});

  @override
  State<HealerHomeWidget> createState() => _HealerHomeWidgetState();
}

class _HealerHomeWidgetState extends State<HealerHomeWidget> {
  late HealerHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HealerHomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 36.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_sharp,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    size: 34.0,
                  ),
                  Text(
                    'Healer Admion',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                    child: Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: Color(0x4DFFFFFF),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('SignInPage', context.mounted);
                        },
                        child: Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200.0,
              height: 55.0,
              decoration: BoxDecoration(
                color: Color(0x32FFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondary,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 36.0,
                      height: 36.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/272/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'United States',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
