import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 740.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 570.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 900.0.ms,
            begin: const Offset(-94.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 120.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 900.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 140.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 900.0.ms,
            begin: const Offset(-100.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 4.0,
              sigmaY: 2.0,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            shape: BoxShape.circle,
                          ),
                          child: FaIcon(
                            FontAwesomeIcons.alignLeft,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 25.0,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              alignment: const AlignmentDirectional(1.0, -1.0),
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('MyCart');
                                  },
                                  child: Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0x00FFFFFF),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.shoppingCart,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 10.0,
                                  height: 10.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).success,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('chat_2_main');
                        },
                        child: Icon(
                          Icons.wechat_sharp,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Container(
                        width: double.infinity,
                        height: 120.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Summer Sale',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Raleway',
                                                fontSize: 17.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '15% OFF',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                            fontFamily: 'Raleway',
                                            color: const Color(0xFF9836A9),
                                            fontSize: 36.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w900,
                                            shadows: [
                                              const Shadow(
                                                color: Color(0x7C57636C),
                                                offset: Offset(2.0, 2.0),
                                                blurRadius: 2.0,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/PngItem_5550642_(2)_1.png',
                                    width: 200.0,
                                    height: 200.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 95.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNzI2MDU1NTY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xEAFFFFFF),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(13.0),
                                          bottomRight: Radius.circular(13.0),
                                          topLeft: Radius.circular(13.0),
                                          topRight: Radius.circular(13.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gedleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 95.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNzI2MDU1NTY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xEAFFFFFF),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(13.0),
                                          bottomRight: Radius.circular(13.0),
                                          topLeft: Radius.circular(13.0),
                                          topRight: Radius.circular(13.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gedleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 95.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNzI2MDU1NTY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xEAFFFFFF),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(13.0),
                                          bottomRight: Radius.circular(13.0),
                                          topLeft: Radius.circular(13.0),
                                          topRight: Radius.circular(13.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gedleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 95.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNzI2MDU1NTY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xEAFFFFFF),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(13.0),
                                          bottomRight: Radius.circular(13.0),
                                          topLeft: Radius.circular(13.0),
                                          topRight: Radius.circular(13.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gedleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 95.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNzI2MDU1NTY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xEAFFFFFF),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(13.0),
                                          bottomRight: Radius.circular(13.0),
                                          topLeft: Radius.circular(13.0),
                                          topRight: Radius.circular(13.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gedleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2.0,
                                    shape: const CircleBorder(),
                                    child: Container(
                                      width: 95.0,
                                      height: 95.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondary,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      child: Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw0fHxhdmF0YXJ8ZW58MHx8fHwxNzI2MDU1NTY4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 1.0, 0.0, 0.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 15.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xEAFFFFFF),
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(13.0),
                                          bottomRight: Radius.circular(13.0),
                                          topLeft: Radius.circular(13.0),
                                          topRight: Radius.circular(13.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                        ),
                                      ),
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Gedleza',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Raleway',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ].divide(const SizedBox(width: 10.0)),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['rowOnPageLoadAnimation']!),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: const Color(0x8FFFFFFF),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          border: Border.all(
                            color: const Color(0xFFC6D9EC),
                            width: 5.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.calendar_month_rounded,
                                color: Color(0x93D12833),
                                size: 30.0,
                              ),
                              Text(
                                'Booking',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 20.0,
                                      letterSpacing: 3.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation2']!),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: const Color(0x8FFFFFFF),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          border: Border.all(
                            color: const Color(0xFFC6D9EC),
                            width: 5.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.shopify,
                                color: Color(0x93D12833),
                                size: 30.0,
                              ),
                              Text(
                                'Shopping',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 20.0,
                                      letterSpacing: 3.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation2']!),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation3']!),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 10.0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: const Color(0x8FFFFFFF),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                          border: Border.all(
                            color: const Color(0xFFC6D9EC),
                            width: 5.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.seedling,
                                color: Color(0x93D12833),
                                size: 30.0,
                              ),
                              Text(
                                'Dreams',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 20.0,
                                      letterSpacing: 3.0,
                                      fontWeight: FontWeight.w800,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation3']!),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation4']!),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
