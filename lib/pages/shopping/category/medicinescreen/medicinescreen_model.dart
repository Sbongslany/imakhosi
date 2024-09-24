import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medicinescreen_widget.dart' show MedicinescreenWidget;
import 'package:flutter/material.dart';

class MedicinescreenModel extends FlutterFlowModel<MedicinescreenWidget> {
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
