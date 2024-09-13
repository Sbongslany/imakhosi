import '/components/nav_back_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'healer_bookings_widget.dart' show HealerBookingsWidget;
import 'package:flutter/material.dart';

class HealerBookingsModel extends FlutterFlowModel<HealerBookingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBack component.
  late NavBackModel navBackModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    navBackModel = createModel(context, () => NavBackModel());
  }

  @override
  void dispose() {
    navBackModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
