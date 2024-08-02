import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/booking_action_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'booking_model.dart';
export 'booking_model.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({super.key});

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget>
    with TickerProviderStateMixin {
  late BookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.start = getCurrentTimestamp;
      setState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              expandedHeight: 100.0,
              pinned: false,
              floating: false,
              backgroundColor: FlutterFlowTheme.of(context).primary,
              iconTheme:
                  IconThemeData(color: FlutterFlowTheme.of(context).secondary),
              automaticallyImplyLeading: true,
              title: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Booking',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                background: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1511208687438-2c5a5abb810c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxsaW9ufGVufDB8fHx8MTcxMzcxNzM3MXww&ixlib=rb-4.0.3&q=80&w=1080',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              centerTitle: true,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                      'https://images.unsplash.com/photo-1511208687438-2c5a5abb810c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHx3aWxkfGVufDB8fHx8MTcxMzcxMTU4N3ww&ixlib=rb-4.0.3&q=80&w=1080',
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: FlutterFlowCalendar(
                              color: FlutterFlowTheme.of(context).primary,
                              iconColor: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              weekFormat: true,
                              weekStartsMonday: true,
                              initialDate: _model.start,
                              rowHeight: 64.0,
                              onChange: (DateTimeRange? newSelectedDate) async {
                                if (_model.calendarSelectedDay ==
                                    newSelectedDate) {
                                  return;
                                }
                                _model.calendarSelectedDay = newSelectedDate;
                                _model.start =
                                    _model.calendarSelectedDay?.start;
                                setState(() {});
                                setState(() {});
                              },
                              titleStyle: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                              dayOfWeekStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              dateStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              selectedDateStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              inactiveDateStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 4.0, 5.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Search for healer',
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                prefixIcon: Icon(
                                  Icons.search_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              maxLines: null,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 8.0, 0.0),
                              child: StreamBuilder<List<UsersRecord>>(
                                stream: queryUsersRecord(
                                  queryBuilder: (usersRecord) =>
                                      usersRecord.where(
                                    'type',
                                    isEqualTo: 'Traditional Healer',
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<UsersRecord> listViewUsersRecordList =
                                      snapshot.data!
                                          .where((u) => u.uid != currentUserUid)
                                          .toList();

                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: listViewUsersRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewUsersRecord =
                                          listViewUsersRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Container(
                                          width: double.infinity,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          child: ExpandableNotifier(
                                            initialExpanded: false,
                                            child: ExpandablePanel(
                                              header: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        listViewUsersRecord
                                                            .name,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      listViewUsersRecord
                                                          .displayName,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                ].divide(const SizedBox(width: 10.0)),
                                              ),
                                              collapsed: Container(),
                                              expanded: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: StreamBuilder<
                                                    List<BookingsRecord>>(
                                                  stream: queryBookingsRecord(
                                                    parent: listViewUsersRecord
                                                        .reference,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            valueColor:
                                                                AlwaysStoppedAnimation<
                                                                    Color>(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<BookingsRecord>
                                                        containerBookingsRecordList =
                                                        snapshot.data!;

                                                    return Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 0.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            offset: const Offset(
                                                              0.0,
                                                              1.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  5.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  5.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  5.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  5.0),
                                                        ),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(8.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'Details',
                                                                  queryParameters:
                                                                      {
                                                                    'users':
                                                                        serializeParam(
                                                                      listViewUsersRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40.0),
                                                                child: Image
                                                                    .network(
                                                                  'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                  width: 60.0,
                                                                  height: 60.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  SingleChildScrollView(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              listViewUsersRecord.name,
                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            dateTimeFormat('MMMMEEEEd',
                                                                                functions.getAvailSlots(containerBookingsRecordList.map((e) => e.time).withoutNulls.toList(), _model.start!).first),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Builder(
                                                                              builder: (context) {
                                                                                final availableSlots = functions.getAvailSlots(containerBookingsRecordList.map((e) => e.time).withoutNulls.toList(), _model.start!).toList();

                                                                                return Wrap(
                                                                                  spacing: 0.0,
                                                                                  runSpacing: 0.0,
                                                                                  alignment: WrapAlignment.start,
                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                  direction: Axis.horizontal,
                                                                                  runAlignment: WrapAlignment.start,
                                                                                  verticalDirection: VerticalDirection.down,
                                                                                  clipBehavior: Clip.none,
                                                                                  children: List.generate(availableSlots.length, (availableSlotsIndex) {
                                                                                    final availableSlotsItem = availableSlots[availableSlotsIndex];
                                                                                    return Card(
                                                                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      elevation: 4.0,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(8.0),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 12.0, 5.0),
                                                                                        child: InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          focusColor: Colors.transparent,
                                                                                          hoverColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return GestureDetector(
                                                                                                  onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                                  child: Padding(
                                                                                                    padding: MediaQuery.viewInsetsOf(context),
                                                                                                    child: SizedBox(
                                                                                                      height: 500.0,
                                                                                                      child: BookingActionWidget(
                                                                                                        user: listViewUsersRecord.name,
                                                                                                        time: availableSlotsItem,
                                                                                                        userid: listViewUsersRecord.reference,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => safeSetState(() {}));
                                                                                          },
                                                                                          child: Text(
                                                                                            dateTimeFormat('jm', availableSlotsItem),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Readex Pro',
                                                                                                  color: FlutterFlowTheme.of(context).secondary,
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  }),
                                                                                );
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              theme: const ExpandableThemeData(
                                                tapHeaderToExpand: true,
                                                tapBodyToExpand: true,
                                                tapBodyToCollapse: true,
                                                headerAlignment:
                                                    ExpandablePanelHeaderAlignment
                                                        .center,
                                                hasIcon: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
