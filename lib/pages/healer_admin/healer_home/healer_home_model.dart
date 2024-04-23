import '/flutter_flow/flutter_flow_util.dart';
import 'healer_home_widget.dart' show HealerHomeWidget;
import 'package:flutter/material.dart';

class HealerHomeModel extends FlutterFlowModel<HealerHomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
