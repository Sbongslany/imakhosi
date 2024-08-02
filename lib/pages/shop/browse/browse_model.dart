import '/flutter_flow/flutter_flow_util.dart';
import 'browse_widget.dart' show BrowseWidget;
import 'package:flutter/material.dart';

class BrowseModel extends FlutterFlowModel<BrowseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
