import '/components/main_card_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for mainCardMenu dynamic component.
  late FlutterFlowDynamicModels<MainCardMenuModel> mainCardMenuModels;

  @override
  void initState(BuildContext context) {
    mainCardMenuModels = FlutterFlowDynamicModels(() => MainCardMenuModel());
  }

  @override
  void dispose() {
    mainCardMenuModels.dispose();
  }
}
