import '/flutter_flow/flutter_flow_util.dart';
import 'dreams_admin_widget.dart' show DreamsAdminWidget;
import 'package:flutter/material.dart';

class DreamsAdminModel extends FlutterFlowModel<DreamsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
