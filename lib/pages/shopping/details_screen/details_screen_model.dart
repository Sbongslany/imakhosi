import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'details_screen_widget.dart' show DetailsScreenWidget;
import 'package:flutter/material.dart';

class DetailsScreenModel extends FlutterFlowModel<DetailsScreenWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
  }

  @override
  void dispose() {
    navBackModel.dispose();
  }
}
